#include <stdio.h>

char* get_flag() <% 
    static char buf[256];
    FILE *f = fopen("flag.txt", "r");
    if (!f) return "nope";
    fgets(buf, sizeof(buf), f);
    return buf;
%>