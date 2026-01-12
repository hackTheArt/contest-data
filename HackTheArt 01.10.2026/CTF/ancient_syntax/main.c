#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* get_flag();

int main() {
    char *flag = get_flag();
    if (!flag) {
        puts("No flag for you!");
        return 1;
    }

    FILE *f = fopen("flag.txt", "r");
    if (!f) {
        puts("Internal error");
        return 1;
    }

    char real[256];
    fgets(real, sizeof(real), f);

    if (strncmp(flag, real, strlen(real)) == 0) {
        puts("GG, correct!");
    } else {
        puts("Nope!");
    }
}

