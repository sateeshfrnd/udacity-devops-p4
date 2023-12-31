#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="satishdockers/udacitydevops_p4:v1.0.0"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login 
docker image tag udacity_p4 $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath