FROM debian:stable-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    gcc-multilib \
    socat \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m ctf

WORKDIR /app

COPY buffy.c .
COPY make.sh .
COPY flag.txt .

RUN chmod +x make.sh && ./make.sh

RUN chown -R root:ctf /app && \
    chmod -R 550 /app && \
    chmod 440 flag.txt && \
    chmod 550 buffy

USER ctf

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:./buffy,stderr"]