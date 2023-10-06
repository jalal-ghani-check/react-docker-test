#node block

FROM node:alpine3.18 as nodework
WORKDIR /var/www/html/next-gen
COPY . /var/www/html/next-gen/
CMD [ "npm" , "start" ]

