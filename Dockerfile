FROM alpine

RUN apk add --no-cache ca-certificates gettext tar gzip openssl curl python py-pip git bash \
    && pip install awscli \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > gethelm.sh \
    && bash gethelm.sh --version v2.14.3
