FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    unzip \
    wget && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

# Download and unzip the file
RUN wget https://github.com/bepass-org/warp-plus/releases/download/v1.2.3/warp-plus_linux-amd64.zip && \
    unzip warp-plus_linux-amd64.zip && \
    rm warp-plus_linux-amd64.zip

EXPOSE 8086

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]
