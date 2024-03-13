
FROM node

WORKDIR /opt/app

COPY . .

RUN ls -lah > need.txt

RUN curl -D- -X GET -H "Authorization: Basic dmFzeWwucHJpc2NoZXBjaHVrQHphZWxhYi5jb206QVRBVFQzeEZmR0YwNkJteGlBUEZhRi1CQWV4UlFhN19Ka2VPd0t2Zk9kN3pSc0xMWEp5UFVpQUItekliTXk0cUlqMEotbk1UWmtnZEpoWDkySkwxLTdYRUl0Mmk4emw1THotbDFnTkMzMm9WdFBKRDRoQ0ZmMFI4dWY5MFVnVW1MM3o1ZzVfdkYyYWREQ2ZpOEotdWV2d1RPRkhMM0pSeDBDUWRxZEtkeGYxWjNUWmEwYmQwWnJ3PTMwRkVBQTBD" -H "Content-Type: application/json" "https://zaelab.atlassian.net/wiki/api/v2/pages/3787391029" >> need.txt

RUN echo "Hi"

RUN npm install

EXPOSE 3000

CMD [ "node", "server.js" ]
