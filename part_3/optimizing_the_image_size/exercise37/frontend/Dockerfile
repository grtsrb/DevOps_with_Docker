FROM node:16-alpine3.18

EXPOSE 5000


WORKDIR /usr/src/app

COPY . .


RUN npm install && \
    npm run build && \
    npm install -g server && \
    adduser -D -H appuser && \
    chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
