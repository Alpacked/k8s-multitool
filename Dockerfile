FROM alpine

RUN apk add --no-cache openssl curl python py-pip git bash \
    && pip install awscli \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash 
