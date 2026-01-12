// gcc holocron.c -o holocron -O0 -no-pie -fno-stack-protector
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static const uint8_t enc_flag[] = {0x1d, 0x16, 0x06, 0x2e, 0x3d, 0x3a, 0x39,
                                   0x65, 0x36, 0x27, 0x3a, 0x3b, 0x0a, 0x20,
                                   0x3b, 0x26, 0x66, 0x34, 0x64, 0x30, 0x31,
                                   0x0a, 0x37, 0x2c, 0x0a, 0x2d, 0x65, 0x27,
                                   0x28, 0x55};
static const uint8_t flag_key = 0x55;

static const uint8_t target[] = {0x3a, 0x1f, 0x38, 0x2d, 0x2f, 0x09, 0x3a, 0x2a,
                                 0x3f, 0x1d, 0x3d, 0x2b, 0x2d, 0x19, 0x00};

static int midichlorians(int x) {
  x ^= 0x12345678;
  x = (x << 3) | (x >> 29);
  return x & 0x7fffffff;
}

static void transform(uint8_t *buf, size_t n) {
  for (size_t i = 0; i < n; i++)
    buf[i] ^= 0x55;

  for (size_t i = 0; i + 1 < n; i += 2) {
    uint8_t t = buf[i];
    buf[i] = buf[i + 1];
    buf[i + 1] = t;
  }

  if (n > 5)
    buf[5] ^= 0x13;
}

static void print_flag(void) {
  char out[64];
  for (size_t i = 0; i < sizeof(enc_flag); i++)
    out[i] = enc_flag[i] ^ flag_key;
  puts(out);
}

int main(void) {
  char in[64];
  puts("== SITH HOLOCRON ==");
  puts("Enter Force Signature:");

  if (!fgets(in, sizeof(in), stdin))
    return 1;
  in[strcspn(in, "\n")] = 0;

  size_t n = strlen(in);
  if (n != 14) {
    puts("Denied.");
    return 0;
  }

  if (midichlorians((int)n) == 0x1337)
    puts("...");

  uint8_t buf[64];
  memcpy(buf, in, n);
  transform(buf, n);

  for (size_t i = 0; i < n; i++) {
    if (buf[i] != target[i]) {
      puts("Denied.");
      return 0;
    }
  }

  puts("Holocron unlocked.");
  print_flag();
  return 0;
}
