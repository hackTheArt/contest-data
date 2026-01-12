FROM alpine:latest

RUN apk add --no-cache socat build-base

RUN adduser -D ctf

WORKDIR /home/ctf

COPY perilous-hoth.c .
COPY flag.txt .

RUN gcc perilous-hoth.c -o perilous-hoth -fno-stack-protector -Wl,-z,relro,-z,now -pie -fPIE -O2
RUN strip perilous-hoth

RUN chown -R root:ctf /home/ctf && \
    chmod 750 /home/ctf && \
    chmod 440 flag.txt && \
    chmod 550 perilous-hoth

USER ctf

EXPOSE 1337

CMD socat TCP-LISTEN:1337,reuseaddr,fork EXEC:"./perilous-hoth"