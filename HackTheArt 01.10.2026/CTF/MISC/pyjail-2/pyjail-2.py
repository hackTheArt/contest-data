#!/usr/bin/python3
import time

FLAG = 'HCS{41N7_N07H1N6_H4rD_1N_J411}'

def greeting():
    print("You rebel scum won't escape my inescapable fortress. My magnificent fortress!")

    print("\nDon't you even dare use your filthy Jedi mind tricks! They have no power here!\n")

    with open("darth-vader_ascii-art.txt", "r", encoding="utf-8") as art:
        for line in art:
            line = line.replace('\n', '')
            print(line)

def sandbox():
    try:
        code = input(">>> ")
        exec(code[:10])
    except Exception as e:
        print("Error occurred")
        print(e)
        exit(0)

if __name__ == "__main__":
    greeting()
    sandbox()
