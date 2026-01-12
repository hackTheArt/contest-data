FROM python:3.10-slim

# Install socat
RUN apt-get update && apt-get install -y socat && rm -rf /var/lib/apt/lists/*

# Create a non-privileged user
RUN useradd -m ctf

# Set working directory
WORKDIR /app

# Copy the challenge files
COPY pyjail-5.py .
COPY darth-vader_ascii-art.txt .

ENV FLAG=HCS{n3v3r_54y_17_c4n7_b3_d0n3}


# Set permissions (read-only for ctf user)
RUN chown -R root:root /app && \
    chmod -R 555 /app

# Switch to the non-privileged user
USER ctf

# Expose the port
EXPOSE 1337

# Run the challenge using socat
# fork,reuseaddr allows multiple connections
# EXEC:"python3 -u pyjail-4.py" runs the python script unbuffered
CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:python3 -u pyjail-5.py,stderr"]

