
FROM node

WORKDIR /opt/app

COPY . .

RUN ls -lah > need.txt


RUN echo "Hi"

RUN npm install

EXPOSE 3000

CMD [ "node", "server.js" ]
