FROM node:18.12.1-alpine

WORKDIR /Ghost

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

CMD ["npm", "run", "dev"]
