FROM node:alpine

WORKDIR /app
COPY --chown=node:node ./package.json .
COPY --chown=node:node ./package-lock.json .  
RUN npm ci
COPY ./ ./
CMD [ "npm","run","serve" ]