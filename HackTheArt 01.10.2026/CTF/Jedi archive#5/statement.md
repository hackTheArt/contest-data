# Jedi Archive #5: Holonet Hijinks

The Jedi Archives, a trove of ancient wisdom and forbidden knowledge, are protected by a new authentication system and a restricted Holonet access portal. Your mission is to bypass these security measures to retrieve the flag.

**Challenge Overview:**

1.  **JWT Forgery:** Gain unauthorized access to privileged information by forging a JSON Web Token. The `/login` endpoint provides an initial token, and the `/archives/holocron` endpoint requires specific `role` and `midichlorian_level` claims for flag retrieval. Pay close attention to the HMAC secret.
2.  **SSRF Bypass:** Explore the `/ssrf` endpoint, which allows the server to fetch content from a provided URL. While there are filters in place to prevent access to internal resources, these filters might be vulnerable to bypass techniques, potentially revealing hidden internal services or information.

**Goal:** Obtain the flag from the `/archives/holocron` endpoint.

**Hints:**
*   The `/source` endpoint provides valuable insights into the JWT verification logic.
*   Internal domains like `holonet.internal` and `archives.internal` might hold secrets.
*   "In my experience, there is no such thing as luck."
