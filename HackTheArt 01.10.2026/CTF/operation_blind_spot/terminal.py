#!/usr/bin/env python3
import os
import subprocess
import sys
import random
import string
import time


RED = "\033[91m"
GREEN = "\033[92m"
YELLOW = "\033[93m"
BLUE = "\033[94m"
RESET = "\033[0m"


def slow_print(text):
    for char in text:
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(0.02)
    print()


def main():
    print(f"{BLUE}=== IMPERIAL ASTROMECH INTERFACE v7.2 ==={RESET}")
    time.sleep(0.5)
    slow_print(f"{RED}[ALERT]{RESET} CRITICAL SYSTEM DAMAGE DETECTED.")
    slow_print(f"{RED}[ALERT]{RESET} Rebel sabotage confirmed: 'X-Wing Virus' active.")
    print("---------------------------------------------------------")
    print(
        f"The targeting subroutine for the character '{RED}X{RESET}' has been disabled."
    )
    print("Any input containing this specific geometric configuration will be purged.")
    print("---------------------------------------------------------")
    print(
        f"{YELLOW}MISSION OBJECTIVE:{RESET} Recover weapon blueprints located in local storage."
    )
    print(
        f"Target File Identifier indicates presence of forbidden char: 'death_star_x_plans.txt'"
    )
    print()
    print("Enter your emergency Rust compiled subroutine body.")
    print("Type 'END_TRANSMISSION' on a new line to execute.")
    sys.stdout.flush()

    code_lines = []
    while True:
        try:
            line = sys.stdin.readline()
            if not line:
                break
            if line.strip() == "END_TRANSMISSION":
                break
            if len(code_lines) > 150:
                print(
                    f"\n{RED}[ERROR]{RESET} Buffer overflow imminent. Input truncated."
                )
                return
            code_lines.append(line)
        except:
            break

    user_code = "".join(code_lines)


    if "x" in user_code.lower():
        print(f"\n{RED}[SECURITY BREACH]{RESET} Forbidden character 'X' detected!")
        print("Input purged by Imperial firewall protocols.")
        return

    
    rand_str = "".join(random.choices(string.ascii_lowercase + string.digits, k=12))
    src_file = f"/tmp/imp_{rand_str}.rs"
    bin_file = f"/tmp/imp_{rand_str}"

    full_code = f"""
    #[allow(unused_imports)]
    #[allow(dead_code)]
    fn main() {{
        {user_code}
    }}
    """

   
    try:
        with open(src_file, "w") as f:
            f.write(full_code)
    except Exception:
        print(f"{RED}[ERROR]{RESET} Local storage write failure.")
        return

    print(f"\n{YELLOW}[*] Initiating Rust compilation sequence...{RESET}")
    try:
        compile_proc = subprocess.run(
            ["rustc", src_file, "-o", bin_file, "-Awarnings"],
            capture_output=True,
            text=True,
            timeout=15,
        )

        if compile_proc.returncode != 0:
            print(f"{RED}[FAILURE]{RESET} Compilation error detected:")
            print(compile_proc.stderr)
            pass  
        else:
            print(f"{GREEN}[SUCCESS]{RESET} Subroutine compiled. Executing...")
            print("================ OUTPUT ================")
            sys.stdout.flush()
            try:
                run_proc = subprocess.run(
                    [bin_file], capture_output=True, text=True, timeout=5
                )
                print(run_proc.stdout)
                if run_proc.stderr:
                    print(f"{YELLOW}--- STDERR ---{RESET}")
                    print(run_proc.stderr)
            except subprocess.TimeoutExpired:
                print(
                    f"\n{RED}[ERROR]{RESET} Execution timed out. Subroutine terminated."
                )

    except subprocess.TimeoutExpired:
        print(f"{RED}[ERROR]{RESET} Compilation timed out.")

    print(f"\n{BLUE}=== TERMINAL SESSION ENDED ==={RESET}")

    try:
        if os.path.exists(src_file):
            os.remove(src_file)
        if os.path.exists(bin_file):
            os.remove(bin_file)
    except:
        pass


if __name__ == "__main__":
    main()
