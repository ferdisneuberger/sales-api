FROM node:lts-alpine

RUN mkdir -p /home/node/api/node_modules && chown -R node:node /home

WORKDIR /home/node/api

COPY package.json yarn.* ./

RUN yarn install

COPY --chown=node:node . .

RUN chmod +x ./init.sh

EXPOSE 3333
