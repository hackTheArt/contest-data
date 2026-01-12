FROM debian:stable-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    gcc-multilib \
    socat \
    && rm -rf /var/lib/apt/lists/*

# Create a non-privileged user
RUN useradd -m ctf

# Set working directory
WORKDIR /app

# Copy the challenge files
COPY buffy.c .
COPY make.sh .
COPY flag.txt .

# Compile the binary
RUN chmod +x make.sh && ./make.sh

# Set permissions (read-only for ctf user)
RUN chown -R root:ctf /app && \
    chmod -R 550 /app && \
    chmod 440 flag.txt && \
    chmod 550 buffy

# Switch to the non-privileged user
USER ctf

# Expose the port
EXPOSE 1337

# Run the challenge using socat
CMD ["socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:./buffy,stderr"]