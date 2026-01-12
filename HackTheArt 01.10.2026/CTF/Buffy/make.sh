#!/bin/bash
gcc -O0 -g -fno-stack-protector -m32 -no-pie -U_FORTIFY_SOURCE -fno-PIC -fno-omit-frame-pointer buffy.c -o buffy
