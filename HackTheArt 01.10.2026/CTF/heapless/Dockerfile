FROM rust:slim-bookworm

RUN apt-get update && apt-get install -y python3 socat && rm -rf /var/lib/apt/lists/*

RUN useradd -m ctf
WORKDIR /home/ctf

COPY flag.txt .
COPY server.py .
COPY entrypoint.sh .

RUN chown -R root:root /home/ctf && \
    chmod 755 /home/ctf && \
    chmod 644 flag.txt && \
    chmod 755 server.py && \
    chmod 755 entrypoint.sh

USER ctf
EXPOSE 1337

ENTRYPOINT ["./entrypoint.sh"]

