#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nyota254/ml-predictor

# Step 2:  
# Authenticate & tag
docker login
docker tag ml-predictor $dockerpath:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push nyota254/ml-predictor:latest
