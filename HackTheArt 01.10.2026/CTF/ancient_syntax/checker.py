#!/usr/bin/env python3
import subprocess
import sys
import re
from pathlib import Path

SUB_FILE = "solution.c"

if not Path(SUB_FILE).exists():
    print("No solution.c found")
    sys.exit(1)

code = Path(SUB_FILE).read_text()

if "{" in code:
    print("Illegal character '{'")
    sys.exit(1)

if "}" in code:
    print("Illegal character '}'")
    sys.exit(1)

blacklist = [
    r"\bsystem\b",
    r"\bpopen\b",
    r"/proc",
    r"\bptrace\b",
]

for bad in blacklist:
    if re.search(bad, code, re.IGNORECASE):
        print(f"Blacklisted: {bad}")
        sys.exit(1)

print("Checks passed, compiling...")

compile_cmd = ["gcc", "main.c", SUB_FILE, "-o", "chall"]
res = subprocess.run(compile_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

if res.returncode != 0:
    print("Compilation failed:")
    print(res.stderr.decode())
    sys.exit(1)

print("Compiled successfully. Running...")

try:
    run = subprocess.run(
        ["./chall"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=2
    )

    print(run.stdout.decode())
except subprocess.TimeoutExpired:
    print("Execution timed out")
    sys.exit(1)
