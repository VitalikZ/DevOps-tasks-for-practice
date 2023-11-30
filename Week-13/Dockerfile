# Use the latest Ubuntu image
FROM ubuntu:latest

# Add a label to the image
LABEL maintainer="dliaudan"
LABEL version="1.0"
LABEL description="Docker image which pings your nginx container infinitely"

# Disable interactive prompts during package installation
ARG DEBIAN_FRONTEND=noninteractive

# Update the package list
RUN apt update

# Install bash
RUN apt install -y bash

# Make the script executable
RUN chmod +x /app/healthcheck.sh

# Set the working directory
WORKDIR /app

# Run the script when the container starts
CMD ["/bin/bash", "/app/healthcheck.sh"]