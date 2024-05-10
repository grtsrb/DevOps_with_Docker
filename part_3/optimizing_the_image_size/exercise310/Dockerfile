FROM golang:1.16-alpine3.14 as build-stage

WORKDIR /usr/src/app

COPY . .


RUN apk --no-cache add make git gcc libtool musl-dev ca-certificates dumb-init && \
    go build -o server && \
    go test ./.... && \
    apk del make git gcc libtool musl-dev ca-certificates dumb-init

FROM alpine:latest

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app .

RUN adduser -D -H appuser && \
    chown appuser . 

USER appuser

CMD ["./server"]

