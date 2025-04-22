#!/usr/bin/env bash

docker build -f Dockerfile-cuda -t text-embeddings-inference:latest --build-arg CUDA_COMPUTE_CAP=89 .
docker build -f Dockerfile.shell -t text-embeddings-inference-shell:latest .
