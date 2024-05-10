FROM ubuntu:22.04

EXPOSE 5000
WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get -y install nodejs && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser && \
    chown -R appuser:appuser .

USER appuser 

CMD ["serve", "-s", "-l", "5000", "build"]

