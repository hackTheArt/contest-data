import os
import re
import requests
from flask import Flask, request, jsonify, abort, Response

app = Flask(__name__)

FLAG = os.getenv("FLAG", "HCS{y0u_4r5_n0w_570b0d_1n_sl0b0z14}")


BLOCKLIST = [
    "127.0.0.1",
    "localhost",
    "::1",
    "0.0.0.0",
]

def looks_like_url(url: str) -> bool:
    return bool(re.match(r"^https?://", url or ""))

@app.get("/")
def home():
    
    return Response(
        """
<p>Try the URL preview feature:</p>
<pre>POST /preview
{"url": "https://example.com"}</pre>
<p>Note: we block those who are not free or those who try to trick us into believing they are from our home (at least we try)</p>
""",
        mimetype="text/html",
    )

@app.post("/index")
def index_post():
    data = request.get_json(silent=True) or {}
    if data.get("free-city", ""):
        msg = data.get("free-city", "")
    else:
        return jsonify({"You-shall-not-pass": "What's the name of our free-city?"}), 400
    
    print(f"Received free-city name: {msg}")
    if msg.lower() == "slobozia":
        return jsonify({"ok": True, "hint": "Nice. Now, where might be the flag? Where is its home? Is it 'internal'? :)"}), 200
    
    return jsonify({"not-okay": True, "echo": msg}), 400

@app.get("/internal/flag")
def internal_flag():
    if request.remote_addr != "127.0.0.1":
        abort(403)
    return FLAG + "\n"

@app.post("/preview")
def preview():
    data = request.get_json(silent=True) or {}
    url = (data.get("url") or "").strip()

    if not looks_like_url(url):
        return jsonify({"error": "url must start with http://"}), 400

    lowered = url.lower()
    for bad in BLOCKLIST:
        if bad in lowered:
            return jsonify({"error": "no localhost fetching allowed"}), 403

    try:
        r = requests.get(
            url,
            timeout=2,
            allow_redirects=True,
            headers={"User-Agent": "CTF-PreviewBot/1.0"},
        )
    except requests.RequestException as e:
        return jsonify({"error": f"fetch failed: {type(e).__name__}"}), 502

    body = r.text[:5000]
    return jsonify(
        {
            "status_code": r.status_code,
            "content_type": r.headers.get("Content-Type", ""),
            "preview": body,
        }
    ), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)
