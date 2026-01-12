// gcc droid_fw.c -o droid_fw -O0 -no-pie -fno-stack-protector
#include <stdint.h>
#include <stdio.h>

static uint32_t xorshift32(uint32_t *s) {
  uint32_t x = *s;
  x ^= x << 13;
  x ^= x >> 17;
  x ^= x << 5;
  *s = x;
  return x;
}

static const uint8_t enc_flag[] = {29, 22, 6,   46, 49, 39,  101, 100, 49, 10,
                                   51, 60, 39,  56, 34, 97,  102, 10,  39, 59,
                                   50, 10, 100, 38, 10, 37,  39,  48,  49, 100,
                                   54, 33, 97,  55, 57, 102, 40,  85};

#define FLAG_LEN (sizeof(enc_flag))

int main(void) {
  puts("== KX-SERIES SECURITY DROID ==");
  puts("Dumping firmware blocks...");

  /* generate base firmware */
  uint32_t seed = 0xA11CE5u ^ 0x5EED1234u;
  uint8_t fw[256];

  for (int i = 0; i < 256; i++) {
    fw[i] = (uint8_t)(xorshift32(&seed) & 0xff);
  }

  static const size_t offsets[] = {
      3,   7,   11,  17,  23,  29,  31,  37,  41,  47,  53,  55,  59,
      61,  67,  71,  73,  79,  83,  89,  97,  101, 103, 107, 109, 113,
      127, 131, 137, 149, 151, 157, 163, 167, 173, 179, 191, 199};

  /* sanity check */
  if (FLAG_LEN != sizeof(offsets) / sizeof(offsets[0])) {
    puts("Firmware corrupted.");
    return 0;
  }

  /* mix flag into firmware */
  uint32_t s2 = 0xC0FFEEu;
  for (size_t i = 0; i < FLAG_LEN; i++) {
    uint8_t real_flag_byte = enc_flag[i] ^ 0x55;
    uint8_t mask = (uint8_t)((xorshift32(&s2) >> 24) ^ 0x5A);
    fw[offsets[i]] ^= real_flag_byte ^ mask;
  }

  puts("Firmware dump (hex):");
  for (int i = 0; i < 256; i++) {
    printf("%02x", fw[i]);
    if ((i + 1) % 32 == 0)
      puts("");
  }

  puts("\nHint: The Empire loves predictable randomness.");
  return 0;
}
