FROM node:12.14.1-alpine3.10

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY package.json .

RUN npm install --quiet
RUN npm install nodemon -g --quiet
RUN npm install -g @angular/cli

COPY . .

CMD nodemon -L --watch . app.js