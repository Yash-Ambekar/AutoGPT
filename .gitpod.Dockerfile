# Use the absolute latest version of Node.js
FROM node:latest

# Set the working directory
WORKDIR /app

USER root
RUN apt-get update && apt-get install -y \
        docker.io \
        docker-compose \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*     

