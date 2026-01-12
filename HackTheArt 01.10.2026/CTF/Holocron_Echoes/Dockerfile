FROM ubuntu:22.04

RUN apt-get update && apt-get install -y socat


RUN useradd -m ctf

WORKDIR /home/ctf


COPY challenge .
COPY libc.so.6 .
COPY ld-linux-x86-64.so.2 .
COPY flag.txt .


RUN chown -R root:ctf /home/ctf && \
    chmod 750 /home/ctf && \
    chmod 440 flag.txt && \
    chmod +x challenge

USER ctf

EXPOSE 1337


CMD socat TCP-LISTEN:1337,reuseaddr,fork \
    EXEC:"./ld-linux-x86-64.so.2 --library-path . ./challenge"

