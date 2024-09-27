FROM node:18.12.1-alpine

WORKDIR /Ghost

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

RUN yarn add ghost-cli@latest -g

RUN ghost install local

COPY . .

CMD ["ghost", "start"]
