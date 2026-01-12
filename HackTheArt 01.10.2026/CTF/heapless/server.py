#!/usr/bin/env python3
import os
import subprocess
import sys
import random
import string

def main():
    print("=== SYSTEM FAILURE: MEMORY CONTROLLER DAMAGED ===")
    print("Diagnostic: Heap allocation logic is unresponsive.")
    print("Mission: Extract 'flag.txt' using STACK MEMORY ONLY.")
    print("---------------------------------------------------")
    print("Forbidden Keywords (The Allocators):")
    print(" - String")
    print(" - Vec")
    print(" - Box")
    print(" - read_to_string")
    print(" - to_string")
    print(" - format!")
    print(" - to_owned")
    print(" - into (banned to prevent conversion trickery)")
    print("---------------------------------------------------")
    print("Enter your Rust code (terminate with a line containing 'EOF'):")
    sys.stdout.flush()

    # 1. Read User Input
    code_lines = []
    while True:
        try:
            line = sys.stdin.readline()
            if not line:
                break
            if line.strip() == "EOF":
                break
            if len(code_lines) > 100:
                print("Error: Code too long.")
                return
            code_lines.append(line)
        except:
            break

    user_code = "".join(code_lines)

    blacklist = [
        "String", "Vec", "Box", 
        "read_to_string", "to_string", 
        "format!", "to_owned", "into"
    ]
    
    for word in blacklist:
        if word in user_code:
            print(f"\n[ERROR] Memory Controller Panic: Detected heap usage '{word}'.")
            print("Action blocked to prevent system crash.")
            return

    # 3. Setup Files
    rand_str = ''.join(random.choices(string.ascii_lowercase, k=8))
    src_file = f"/tmp/stack_{rand_str}.rs"
    bin_file = f"/tmp/stack_{rand_str}"

    full_code = user_code

    try:
        with open(src_file, "w") as f:
            f.write(full_code)
    except Exception:
        return

    print("\n[*] Compiling on embedded system...")
    try:
        compile_proc = subprocess.run(
            ["rustc", src_file, "-o", bin_file],
            capture_output=True,
            text=True,
            timeout=10
        )
        
        if compile_proc.returncode != 0:
            print("[-] Compilation Failed:")
            print(compile_proc.stderr)
            return

    except subprocess.TimeoutExpired:
        print("[-] Compilation timed out.")
        return

    print("[*] Executing...")
    sys.stdout.flush()
    try:
        run_proc = subprocess.run(
            [bin_file],
            capture_output=True,
            text=True,
            timeout=5
        )
        print("--- OUTPUT ---")
        print(run_proc.stdout)
        if run_proc.stderr:
            print("STDERR:", run_proc.stderr)
            
    except subprocess.TimeoutExpired:
        print("[-] Execution timed out.")

    try:
        if os.path.exists(src_file): os.remove(src_file)
        if os.path.exists(bin_file): os.remove(bin_file)
    except:
        pass

if __name__ == "__main__":
    main()

