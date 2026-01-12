#!/usr/bin/python3
import time, sys

def greeting():
    time.sleep(0.1)

    print("You rebel scum won't escape my inescapable fortress. My magnificent fortress!")

    time.sleep(0.5)

    print("\nDon't you even dare use your filthy Jedi mind tricks! They have no power here!\n")

    time.sleep(0.5)

    with open("darth-vader_ascii-art.txt", "r", encoding="utf-8") as art:
        for line in art:
            line = line.replace('\n', '')
            print(line)
            time.sleep(0.1)

def audit(name, args): 
    if name not in ["exec", "compile", "builtins.input", "builtins.input/result"]: 
        print("Rebel scum!") 
        print(name, args)


def sandbox():
    sys.addaudithook(audit)
    while True:
        try:
            code = input(">>> ")
            exec(code)
        except Exception as e:
            print("Error occurred! See you, rebel!")
            print(e)
            exit(0)

if __name__ == "__main__":
    greeting()
    sandbox()
