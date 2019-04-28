FROM alpine:3.7

RUN apk add --no-cache \
    openssh-client \
    git \
    mongodb \
    nodejs && \
    mkdir -p /data/db /code

COPY ./entrypoint.sh /

CMD "./entrypoint.sh"