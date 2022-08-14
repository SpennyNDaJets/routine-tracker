FROM node:17.3.0

RUN mkdir -p /usr/src/routine-tracker/web-client
WORKDIR /usr/src/routine-tracker/web-client

COPY package*.json ./

RUN yarn install

EXPOSE 3000

CMD ["yarn", "start"]