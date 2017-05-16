FROM node:alpine

ADD package.json package.json
RUN npm install
ADD . .

LABEL databox.type="arbiter"

EXPOSE 8080

CMD ["npm","start"]
#CMD ["sleep","99999"]
