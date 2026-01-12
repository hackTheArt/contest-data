#!/usr/bin/python3
import time

FLAG = "HCS{Pr150N_8r34K_15_N07_7H47_D1FF1CU17}"

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

def sandbox():
    try:
        code = input(">>> ")
        exec(code)
    except Exception as e:
        print("Error occurred")
        print(e)
        exit(0)

if __name__ == "__main__":
    greeting()
    sandbox()
   
