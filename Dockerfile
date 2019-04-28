FROM alpine:3.7

RUN apk add --no-cache \
    openssh-client \
    dos2unix \
    git \
    mongodb \
    nodejs && \
    mkdir -p /data/db /code

COPY ./entrypoint.sh /

CMD "dos2unix ./entrypoint.sh"

CMD "./entrypoint.sh"