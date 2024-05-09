FROM node:16.20.2-alpine3.18

EXPOSE 5000

RUN node -v && npm -v

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

RUN adduser -D -H appuser

RUN chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
