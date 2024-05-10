FROM golang:1.16-alpine3.14 as build-stage

WORKDIR /usr/src/app

COPY . .

#RUN apk add build-base -> 645MB

RUN apk --no-cache add make git gcc libtool musl-dev ca-certificates dumb-init 


# Build project

RUN go build && \
    go test ./.... && \
    adduser -D -H appuser && \
    chown appuser . && \
    apk del make git gcc libtool musl-dev ca-certificates dumb-init

FROM alpine:3.16 

EXPOSE 8080

WORKDIR /usr/src/app 

COPY --from=build-stage /usr/src/app /usr/src/app

RUN adduser -D -H appuser && \
    chown appuser . 
USER appuser

CMD ["./server"]

