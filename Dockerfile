#node block

FROM node:alpine3.18 as build
WORKDIR /react/next-gen
COPY ./package.json /react/next-gen
RUN npm install
COPY . /react/next-gen

RUN npm run build
FROM nginx
COPY --from=build /react/next-gen/build /usr/share/nginx/html

