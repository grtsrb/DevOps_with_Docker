FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

# Copy files

COPY . .

# Build project

RUN go build

# Test 

RUN go test ./....

CMD ["./server"]
