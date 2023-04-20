FROM alpine:3.17.3

ARG K8S_VERSION
ARG HELM_VERSION
ENV HELM_FILENAME=helm-${HELM_VERSION}-linux-amd64.tar.gz

RUN apk update \
 && apk add ca-certificates tar gzip \
 && apk add curl jq \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && curl -L https://get.helm.sh/${HELM_FILENAME} | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 \
 && chmod +x /usr/local/bin/kubectl \
 && rm -rf /var/cache/apk/*

CMD ["kubectl"]
