#!/usr/bin/env python3
import sys
import os
import tempfile
import shutil
import subprocess

DELIMITER = "END_OF_TRANSMISSION"

def main():
    print(f"Send your C code. End with '{DELIMITER}' on a new line.", flush=True)

    code = ""
    while True:
        try:
            line = sys.stdin.readline()
        except EOFError:
            break
        if not line:
            break
        
        if DELIMITER in line:
            code += line.split(DELIMITER)[0]
            break
        code += line

    tmp_dir = tempfile.mkdtemp()
    try:
        cwd = os.getcwd()
        for f in ['main.c', 'checker.py', 'flag.txt']:
            src = os.path.join(cwd, f)
            if os.path.exists(src):
                shutil.copy(src, tmp_dir)
            else:
                print(f"Error: Missing {f} in challenge directory.", flush=True)
                return

        with open(os.path.join(tmp_dir, "solution.c"), "w") as f:
            f.write(code)

        sys.stdout.flush()
        subprocess.run([sys.executable, "checker.py"], cwd=tmp_dir)
        
    except Exception as e:
        print(f"Internal Error: {e}", flush=True)
    finally:
        shutil.rmtree(tmp_dir)

if __name__ == "__main__":
    main()
