// buffy.c 32-bit ELF executable

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void win(){
  system("/bin/sh");
}

void vuln(){
  char buffer[72];
  printf("Enter some input: ");
  read(0,buffer,0x80);
  puts("Welcome!");
}

int main(){

  setbuf(stdin, NULL);
  setbuf(stdout, NULL);
  setbuf(stderr, NULL);

  vuln();
}
