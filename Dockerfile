FROM alpine:3.12

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf "/var/cache/apk/*"

WORKDIR /openssl-certs
VOLUME  /openssl-certs

ENTRYPOINT ["openssl"]