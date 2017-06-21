FROM alpine:3.6

RUN apk add --no-cache curl --virtual .build-deps \
  && curl -fsSL "https://get.docker.com/builds/`uname -s`/`uname -m`/docker-latest.tgz" | tar --strip-components=1 -xz -C /usr/local/bin docker/docker \
  && apk del .build-deps
