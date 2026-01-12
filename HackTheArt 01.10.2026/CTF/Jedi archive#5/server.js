const express = require('express');
const bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');
const fetch = require('node-fetch');
const { URL } = require('url');

const app = express();
const PORT = process.env.PORT || 3000;


const HMAC_SECRET = process.env.HMAC_SECRET || 'dagobah';
const FLAG = process.env.FLAG || 'HCS{1n my exper1enc3, th3r3 1s n0 2uch 7h1ng 4s 1uck}';
const TOKEN_EXP = '1h';

app.use(bodyParser.json());

function isUrlAllowed(raw) {
  try {
    const url = new URL(raw);
    const protocol = url.protocol.toLowerCase();
    if (protocol !== 'http:' && protocol !== 'https:') return false;

    const hostname = url.hostname;
    const allowDomains = ['holonet.internal', 'archives.internal', 'trusted.example'];

    // Allow matching domains
    const domainOk = allowDomains.some(d => hostname === d || hostname.endsWith('.' + d));
    if (domainOk) return true;

    // Block private IP ranges
    const privateIpRegex =
      /^(127\.|10\.|192\.168\.|172\.(1[6-9]|2[0-9]|3[0-1])|169\.254\.)/;
    if (privateIpRegex.test(hostname)) return false;

    return true;
  } catch (err) {
    return false;
  }
}


app.get('/', (req, res) => {
  res.type('html').send(`
    <h1>The Jedi Council's Seal</h1>
    <p>Begin at <a href="/datapad">/datapad</a> then try to find the code.</p>
    <p>Try to find other endpoints named after common vulnerabilities.</p>
  `);
});

app.get('/datapad', (req, res) => {
  res.type('html').send(`
    <pre>
  Jedi logs (fragment):

  "Master Yoda once said: \\"To learn from the swamp, one must live in the swamp.
  Yoda trained for years on planet: *****\\""
    </pre>
    <p>The missing word is the secret you are looking for.</p>
  `);
});

app.post('/login', (req, res) => {
  const username = (req.body && req.body.username) || 'guest';
  const payload = {
    sub: username,
    role: 'padawan',
    midichlorian_level: 5000
  };
  const token = jwt.sign(payload, HMAC_SECRET, { algorithm: 'HS256', expiresIn: TOKEN_EXP });
  res.json({ token });
});

app.get('/archives/holocron', (req, res) => {
  const auth = req.headers.authorization || req.query.token || '';
  const token = auth.replace(/^Bearer\s+/i, '');
  if (!token) return res.status(401).json({ error: 'missing token' });

  try {
    const payload = jwt.verify(token, HMAC_SECRET, { algorithms: ['HS256'] });

    if (payload.role !== 'jedi') {
      return res.status(403).json({ error: 'insufficient role' });
    }
    if (payload.midichlorian_level <= 15000) {
      return res.status(403).json({ error: 'midichlorian level too low' });
    }

    return res.json({ flag: FLAG });
  } catch (err) {
    return res.status(401).json({ error: 'invalid token', detail: err.message });
  }
});

app.get('/source', (req, res) => {
  res.type('text').send(
    `// verify: jwt.verify(token, HMAC_SECRET, { algorithms: ['HS256'] });\n// checks: payload.role === 'jedi' && payload.midichlorian_level > 15000`
  );
});


app.get('/ssrf', async (req, res) => {
  const target = req.query.url;
  if (!target) return res.status(400).json({ error: 'missing url parameter' });

  if (!isUrlAllowed(target)) {
    return res.status(403).json({ error: 'URL not allowed' });
  }

  try {
    const resp = await fetch(target, { timeout: 5000 });
    const text = await resp.text();
    res.type('text').send(text.slice(0, 500) + '\n... [truncated]');
  } catch (err) {
    res.status(500).json({ error: 'fetch failed', detail: err.message });
  }
});

// -----------------------------
app.use((req, res) => res.status(404).send('Not found'));
app.listen(PORT, () => console.log(`Server running on :${PORT}`));

