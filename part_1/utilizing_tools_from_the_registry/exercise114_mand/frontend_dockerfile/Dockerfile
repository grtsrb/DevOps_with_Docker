FROM node:16.20.2-alpine3.18
# Expose necessary port
EXPOSE 5000

# Set backend URL
ENV REACT_APP_BACKEND_URL=http://localhost:8080 

# Test node version
RUN node -v && npm -v

#Set working directory and copy package.json
WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
