# Use ARM64-compatible base image
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    curl

WORKDIR /app

COPY . .

CMD ["echo", "Hello from ARM64 container!"]

