FROM python:3-alpine

RUN apk add --no-cache socat

WORKDIR /app
COPY pyjail-1.py .

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:'python3 pyjail-1.py'"]
