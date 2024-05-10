FROM alpine:latest

WORKDIR /usr/src/app

EXPOSE 8080

# Copy files

COPY . .

# RUN
RUN apk --no-cache add go && \
    go build && \
    go test ./.... && \
    adduser -D appuser && \
    chown -R appuser:appuser . && \
    apk del go 

USER appuser

CMD ["./server"]
