FROM node:alpine

WORKDIR /app
COPY --chown=node:node ./package.json . 
RUN npm install
COPY ./ ./
CMD [ "npm","run","serve" ]