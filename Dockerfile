FROM node:18.12.1-alpine

WORKDIR /Ghost

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

RUN yarn setup

COPY . .

CMD ["yarn", "dev"]
