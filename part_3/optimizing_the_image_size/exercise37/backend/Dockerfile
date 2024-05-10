FROM golang:1.16-alpine3.14

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

RUN apk --no-cache add make git gcc libtool musl-dev ca-certificates dumb-init && \
    go build && \
    go test ./.... && \
    adduser -D -H appuser && \
    chown appuser . && \
    apk del make git gcc libtool musl-dev ca-certificates dumb-init

USER appuser

CMD ["./server"]
