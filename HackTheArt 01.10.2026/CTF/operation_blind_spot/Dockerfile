# Use a relatively small Rust base image
FROM rust:1.70-slim-bookworm

# Install python3 for the server script and socat for networking
RUN apt-get update && \
  apt-get install -y python3 socat && \
  rm -rf /var/lib/apt/lists/*

# Create a low-privilege user named 'rebel'
RUN useradd -m rebel

WORKDIR /home/rebel

# Copy challenge files
COPY death_star_x_plans.txt .
COPY terminal.py .
COPY entrypoint.sh .

# Set permissions
# Root owns files, rebel can read/execute specific ones
RUN chown -R root:root /home/rebel && \
  chmod 755 /home/rebel && \
  chmod 644 death_star_x_plans.txt && \
  chmod 755 terminal.py && \
  chmod 755 entrypoint.sh

# Switch to the low-privilege user
USER rebel

# Expose the port the challenge will listen on
EXPOSE 2187

# Run the entrypoint script
ENTRYPOINT ["./entrypoint.sh"]
