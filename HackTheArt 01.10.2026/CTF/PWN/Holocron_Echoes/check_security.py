from pwn import *

elf = ELF('./challenge')
print(elf.checksec())
