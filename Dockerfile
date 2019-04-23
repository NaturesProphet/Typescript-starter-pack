FROM node:10.15.3

RUN mkdir -p /usr/app/src
WORKDIR /usr/app

COPY package.json tsconfig.json /usr/app/
RUN npm install
COPY src/ /usr/app/src
RUN npm run prestart:prod

CMD ["npm","run", "start:prod"]