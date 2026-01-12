target = [
    # get it from the binary idgaf
]

key = 0x55

buf = target.copy()

buf[5] ^= 0x13

for i in range(0, len(buf) - 1, 2):
    buf[i], buf[i + 1] = buf[i + 1], buf[i]

for i in range(len(buf)):
    buf[i] ^= key

result = ""
for b in buf:
    result += chr(b)

print("Recovered Force Signature:")
print(result)
