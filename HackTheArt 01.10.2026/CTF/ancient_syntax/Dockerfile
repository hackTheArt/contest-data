FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    gcc \
    python3 \
    socat \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /challenge

COPY main.c checker.py flag.txt wrapper.py ./

RUN useradd -m ctf
USER ctf

EXPOSE 1337

CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:python3 wrapper.py,stderr"]