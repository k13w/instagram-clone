FROM node:10-alpine

WORKDIR /usr/app
COPY dump.sql package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 7000
CMD ["yarn", "start"]