FROM node:10.22.0-alpine3.9

ENV PORT 3000

ENV PATH /app/node_modules/.bin:$PATH
RUN mkdir /app
WORKDIR /app
EXPOSE 3000

RUN yarn config set registry https://nexus.altoalliance.com/repository/npm-group/

COPY package* /app/

RUN yarn install


ENTRYPOINT ["yarn", "start"]