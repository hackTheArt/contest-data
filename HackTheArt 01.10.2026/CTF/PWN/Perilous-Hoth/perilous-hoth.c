// Challange created by Iustin-Mihail Bichir
// Username: ducky-duck
// Contest: HackTheART 2026

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int LENGTH;

void search_archive(void);

char *parser(char *n){
    char p[256];
    
    strncpy(p, n, sizeof(p) - 1);
    p[sizeof(p) - 1] = '\0';

    for(int i = 1; n[i]!= 0; i++){
        n[i] = p[i - 1];
        n[i - 1] = p[i];
    }
    for(int i = 1; n[i]!= 0; i++){
        if (n[i] == '%'){
            printf("%s", "Really, kid!? Try harder than this!\n");
            n[i] = n[i] - 5;
        }
        else {
            if (n[i] == ' '){
                n[i] = n[i] + 5;
            }
        }
    }
    for(int i = 0; n[i]!= 0; i++){
        if(n[i] == 'p'){
            printf("%s", "And here I was, placing my trust in you!\n");
            n[i] = n[i] - 32;
        }
        else {
            if(n[i] == 'P'){
            n[i] = n[i] + 32;
        }
        }
    }
    for(int i = 0; n[i]!= 0; i++){
        if(n[i] == 'l'){
            printf("%s", "And here I was, placing my trust in you!\n");
            n[i] = n[i] - 36;
        }
        else {
            if(n[i] == 'K'){
            n[i] = n[i] + 33;
        }
        }
    }
    for(int i = 1; n[i]!= 0; i++){
        if (n[i] == 'x'){
            printf("%s", "Really, kid!? Try harder than this!\n");
            n[i] = n[i] - 5;
        }
        else {
            if (n[i] == ' '){
                n[i] = n[i] + 88;
            }
        }
    }

    if(LENGTH < 32){
        printf("\n%s", "Sorry, kid, better luck next time!\n");
        exit(0);
    }

    if(strlen(n) != LENGTH){
        printf("%s", "Who’s more the fool, the fool or the fool that follows?\n");
        exit(0);
    }

    return n;
}


void menu(){
    
    char option[10];
    
    printf("\n\n%s", "Please choose one of the options below.\n\n");
    
    printf("%s", "Options:\n");
    printf("%s", "1. Search\n");
    printf("%s", "2. Exit\n\n");
    
    printf("%s", "Selected option: ");
    
    if(!fgets(option, sizeof option, stdin)){ 
        return;
    }
    
    option[strcspn(option, "\n")] = '\0';
    
    if (strcmp(option, "1") == 0){
        search_archive();
    }
    else {
        exit(0);
    }
}

int random_length(){
    srand(time(NULL));
    
    int num, len;
    
    len = num = rand() % 256 + 1;

    int mirror = 0;
    
    while(num != 0){
        mirror = mirror * 10 + num % 10;
        num = num /10;
    }
    
    int choices[] = {
        69,
        420
    };
    
    int x = choices[rand() % 2];
    
    printf("\nLuke, trust the force: %d\n", x);
    
    printf("\n");

    printf("%s", "Oops, my holocrons identification numbers!\n\n");

    for (int i = 0; i < 1025; i++) {

        num = rand() % 1024 + 1;
        
        if (i == ((x*x - 489 * x + 28980) + ((420 + 69 + x) * 5 + 1) ) % 1025){
            printf("%d ", mirror);
        }
        printf("%d ", num);
    }
    //printf("%d", mirror);
    return len;
}

void search_archive(void){

    char input[256];
    
    printf("%s", "\nEnter search query: ");
    
    if(!fgets(input, sizeof input, stdin)){ 
        return;
    }
    
    input[strcspn(input, "\n")] = '\0';
    
    parser(input);

    FILE *f = fopen("flag.txt", "r");

    if (!f) {
        puts("\nFlag file missing. Contact admin!");
        exit(1);
    }
    char flag[64];

    fgets(flag, sizeof flag, f);

    fclose(f);

    int i = 0;

    while(i < LENGTH % 10){
        printf(input);
        i += 1;
    }

    printf("\n");

}

int main(){
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
    setbuf(stderr, NULL);

    printf("\n%s", "Welcome to the vast Jedi Archive, Hoth district!\n");

    printf("\n%s", "Connecting to Jedi Archive terminal...\n");

    LENGTH = random_length();

    menu();
}
