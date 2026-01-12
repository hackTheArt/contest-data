#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


void win() {
    FILE *f = fopen("flag.txt", "r");
    if (!f) {
        puts("Flag file missing. Contact admin!");
        exit(1);
    }
    char flag[128];
    fgets(flag, sizeof(flag), f);
    puts("Get yo flag space pirate:");
    puts(flag);
    fclose(f);
    exit(0);
}


void totally_not_win() {
    puts("Try harder");
    exit(0);
}


void useless() {
    char buf[32];
    read(0, buf, sizeof(buf));
    if (strcmp(buf, "nope") == 0) {
        puts("Not here:)");
    }
}


void menu() {
    puts("======= Jedi Archive Terminal v6.6 =======");
    puts("1. Transmit a message");
    puts("2. Disconnect from the network");
    printf("> ");
}

// Vulnerable function
void vuln() {
    char buf[64];
    printf("Transmit data: ");
    read(0, buf, 128);   
    printf("The archives echo back: ");
    printf(buf);         
    puts("");
}

int main() {
    setbuf(stdout, NULL);
    setbuf(stdin, NULL);
    setbuf(stderr, NULL);

    puts("Connecting to Jedi Archive terminal...");
    puts("Only authorized Jedi may access restricted Holocrons.");

    while (1) {
        menu();
        int choice;
        if (scanf("%d", &choice) != 1) exit(0);
        getchar(); 
        if (choice == 1) vuln();
        else if (choice == 2) {
            puts("May the Force be with you!");
            exit(0);
        }
        else {
            puts("Invalid choice.");
        }
    }
}

