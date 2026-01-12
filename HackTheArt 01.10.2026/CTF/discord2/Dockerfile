FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y \
        iputils-ping \
        traceroute \
        whois \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY . .

RUN mkdir /app
RUN mv flag.txt /app/flag.txt
RUN echo "CTF{ch3ck_y0ur_b4ckups_sys4dm1n}" > /var/backups/flag2.txt

RUN pip install --no-cache-dir discord.py aiohttp

RUN chown -R root:root /app /src
RUN chmod 444 /app/flag.txt
RUN chmod 444 /var/backups/flag2.txt

RUN useradd -m ctfplayer

WORKDIR /app
USER ctfplayer

CMD ["python", "/src/bot.py"]
