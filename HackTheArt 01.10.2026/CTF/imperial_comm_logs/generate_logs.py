import random
from datetime import datetime

# The Secret "Key" needed to solve the challenge
TARGET_BUCKET = "exegol-wayfinder-vault-7"
SECRET_USER_AGENT = "Sith-Holonet-Uplink/v6.6"
SECRET_REFERER = "https://internal.empire.gov/dark-council"

print("Generating logs...")
with open("server_access.log", "w") as f:
    # 1. Generate 2000 lines of "Access Denied" noise
    for i in range(2000):
        ip = f"10.0.{random.randint(0,255)}.{random.randint(0,255)}"
        ua = random.choice(["Mozilla/5.0", "RebelScanner/1.0", "Curl/7.68", "Python-urllib/3.8"])
        line = f'79a59df900b949e55d96a1e698fbacedfdc209dc {TARGET_BUCKET} [{datetime.now()}] {ip} - {random.randint(1000,9999)} REST.GET.OBJECT coordinates.png "GET /coordinates.png HTTP/1.1" 403 AccessDenied 243 - 12 - "-" "{ua}" -'
        f.write(line + "\n")

    # 2. Insert the ONE successful line (The Clue)
    success_line = f'79a59df900b949e55d96a1e698fbacedfdc209dc {TARGET_BUCKET} [{datetime.now()}] 192.168.1.66 - A9B8C7D6 REST.GET.OBJECT coordinates.png "GET /coordinates.png HTTP/1.1" 200 - 4096 4096 15 15 "{SECRET_REFERER}" "{SECRET_USER_AGENT}" -'
    f.write(success_line + "\n")
    
    print(f"Log generated. The clue is:\nBucket: {TARGET_BUCKET}\nUA: {SECRET_USER_AGENT}\nRef: {SECRET_REFERER}")
