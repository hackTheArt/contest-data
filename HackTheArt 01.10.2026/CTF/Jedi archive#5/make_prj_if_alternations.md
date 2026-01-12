# docker build -t jedi_archives_ssrf_jwt .

## to run:
1. docker run --rm -p 3000:3000 jedi_archives_ssrf_jwt
(daca nu se vrea altceva)

2. docker run --rm -p 3000:3000 -e HMAC_SECRET=whatever -e FLAG="FLAG{whatever the fuck we want}" jedi_archives_ssrf_jwt
(daca se doreste alta configuratie)
