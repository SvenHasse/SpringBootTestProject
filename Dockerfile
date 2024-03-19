FROM mcr.microsoft.com/vscode/devcontainers/java:21

# Installiere zusätzliche Pakete
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*