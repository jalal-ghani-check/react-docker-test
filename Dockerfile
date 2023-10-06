#node block

FROM node:alpine3.18 as nodework
WORKDIR /react/next-gen
COPY ./package.json /react/next-gen
RUN npm install
COPY . /react/next-gen
CMD [ "npm" , "start" ]

