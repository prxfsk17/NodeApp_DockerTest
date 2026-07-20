#!/usr/bin/env bash

# 1) Setting up the environment
echo 'Starting deployment'
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 538379555054.dkr.ecr.eu-central-1.amazonaws.com

# 2) Creating and uploading the image

docker build -t 538379555054.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest .
docker push 538379555054.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest

# 3) Cleanup
docker image rm 538379555054.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest