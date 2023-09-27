#node block

FROM node:alpine3.18 as nodework
WORKDIR /var/www/html/next-gen
COPY ./package.json /var/www/html/next-gen/
RUN npm install
COPY . /var/www/html/next-gen/
CMD [ "npm" , "start" ]

