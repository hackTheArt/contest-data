const jwt = require('jsonwebtoken');

const secret = process.argv[2] || 'dagobah';
const payload = {
  sub: 'hacker',
  role: 'jedi',
  midichlorian_level: 20000
};

const token = jwt.sign(payload, secret, { algorithm: 'HS256' });
console.log(token);
