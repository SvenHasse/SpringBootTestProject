FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Installiere zusätzliche Pakete
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*