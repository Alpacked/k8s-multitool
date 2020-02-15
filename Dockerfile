FROM lwolf/helm-kubectl-docker

RUN apk add --no-cache python py-pip git bash \
    && pip install awscli \
    && mkdir -p ~/.helm/plugins \
    && helm plugin install https://github.com/hypnoglow/helm-s3.git
