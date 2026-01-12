target = [
    # get it from the binary idgaf
]

key = 0x55

# Step 1: copy target into a mutable list
buf = target.copy()

# Step 2: undo the special XOR at index 5
buf[5] ^= 0x13

# Step 3: undo the pair swapping
for i in range(0, len(buf) - 1, 2):
    buf[i], buf[i + 1] = buf[i + 1], buf[i]

# Step 4: undo the XOR with key (0x55)
for i in range(len(buf)):
    buf[i] ^= key

# Step 5: convert numbers to characters
result = ""
for b in buf:
    result += chr(b)

print("Recovered Force Signature:")
print(result)
