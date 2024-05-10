FROM golang:1.16-alpine3.14

WORKDIR /usr/src/app

EXPOSE 8080

#RUN apk add build-base -> 645MB

RUN apk --no-cache add make git gcc libtool musl-dev ca-certificates dumb-init 

# Copy files
COPY . .

# Build project

RUN go build

# Test 

RUN go test ./....

RUN adduser -D -H appuser

RUN chown appuser .

USER appuser

CMD ["./server"]
