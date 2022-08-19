
FROM node

WORKDIR /opt/app

COPY . .

RUN ls -lah

RUN npm install

EXPOSE 3000

CMD [ "node", "server.js" ]