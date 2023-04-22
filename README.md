# helm-kubectl-curl-jq-docker

Custom alpine docker image with helm, kubectl, curl, jq installed with credits to [lwolf/helm-kubectl-docker](https://github.com/lwolf/helm-kubectl-docker).

Docker Registry: https://hub.docker.com/r/bkjam/helm-kubectl-curl-jq-docker

## Usage

```bash
# Build Docker Image
docker build -t helm-kubectl-curl-jq-docker:v1.27.1-v3.11.3 --build-arg K8S_VERSION=v1.27.1 --build-arg HELM_VERSION=v3.11.3 .

# Run Docker Image
docker run helm-kubectl-curl-jq-docker:v1.27.1-v3.11.3

# Publish Docker Image to Docker Hub
docker login
docker tag helm-kubectl-curl-jq-docker:v1.27.1-v3.11.3 bkjam/helm-kubectl-curl-jq-docker:v1.27.1-v3.11.3
docker push bkjam/helm-kubectl-curl-jq-docker:v1.27.1-v3.11.3

# Git Tag
git tag -a v1.27.1-v3.11.3 -m "kubectl v1.27.1 and helm v3.11.3"
git push origin v1.27.1-v3.11.3
```

## Docker Tags

The docker images are currently updated manually.

| Tags            | Kubectl version | Helm version | Alpine version |
|-----------------|-----------------|--------------|----------------|
| latest          | v1.27.1         | v3.11.3      | v3.17.3        |
| v1.27.1-v3.11.3 | v1.27.1         | v3.11.3      | v3.17.3        |
