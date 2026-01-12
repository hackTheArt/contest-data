FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    socat \
    lib32z1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY reactor .
COPY flag.txt .

RUN chmod +x reactor

# Create a non-privileged user
RUN useradd -m ctf
USER ctf

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:./reactor"]

