// gcc reactor.c -o reactor -O0 -no-pie -fno-stack-protector
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void print_flag(void) {
  FILE *f = fopen("flag.txt", "r");
  if (!f) {
    puts("flag.txt missing");
    exit(1);
  }
  char buf[128];
  fgets(buf, sizeof(buf), f);
  fclose(f);
  puts(buf);
}

/* decoy functionality */
void status(void) {
  puts("[+] Reactor status: STABLE");
  puts("[+] Core temperature nominal");
}

void diagnostics(void) {
  puts("[*] Running diagnostics...");
  puts("[*] No anomalies detected");
}

void coolant(void) { puts("[!] Coolant valves locked by Imperial protocol"); }

void override(void) {
  char buf[64];
  puts("[!!] Manual override engaged");
  puts("Enter override code:");
  fgets(buf, 256, stdin); 
  puts("Override rejected.");
}

void menu(void) {
  puts("== DEATH STAR REACTOR CONSOLE ==");
  puts("1) Reactor status");
  puts("2) Run diagnostics");
  puts("3) Coolant controls");
  puts("4) Manual override");
  puts("5) Exit");
  puts("------------------------------");
  puts("choice?");
}

int main(void) {
  setbuf(stdin, NULL);
  setbuf(stdout, NULL);

  int choice;

  while (1) {
    menu();
    if (scanf("%d%*c", &choice) != 1)
      break;

    switch (choice) {
    case 1:
      status();
      break;
    case 2:
      diagnostics();
      break;
    case 3:
      coolant();
      break;
    case 4:
      override();
      break;
    case 5:
      puts("Exiting console.");
      return 0;
    default:
      puts("Unknown command.");
      break;
    }
  }
  return 0;
}
