FROM python:3-alpine

RUN apk add --no-cache socat
ENV PYTHONIOENCODING=utf-8

WORKDIR /app
COPY . .

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:'python3 -u pyjail-2.py'"]
