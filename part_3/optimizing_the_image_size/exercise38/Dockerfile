FROM node:16-alpine3.18 as build-stage

WORKDIR /usr/src/app

COPY . .


RUN npm install && \
    npm run build 

FROM nginx:stable-alpine3.19 

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html

RUN adduser -D -H appuser && \
    chown appuser .

USER appuser

CMD [ "nginx", "-g", "daemon off;" ]


