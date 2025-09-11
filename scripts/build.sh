#!/bin/bash
set -e

echo "Starting ARM Docker build"

# Create and use buildx builder for multi-arch builds
docker buildx create --use --name arm_builder || true

docker buildx inspect --bootstrap

# Build only for ARM64
docker buildx build --platform linux/arm64 -t your-dockerhub-username/myapp:latest .

echo "Docker build complete"
