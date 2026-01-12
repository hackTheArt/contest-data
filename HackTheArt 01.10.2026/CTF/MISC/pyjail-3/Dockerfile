FROM python:3-alpine

RUN apk add --no-cache socat

WORKDIR /app
COPY pyjail-3.py .
COPY darth-vader_ascii-art.txt .

ENV FLAG="HCS{14M8D4_8r1N65_Y0U_0N3_5H311_M0r3}"

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:'python3 pyjail-3.py'"]
