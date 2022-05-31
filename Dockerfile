
FROM node:16-alpine as build-step
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod
 
FROM nginx:1.17.1-alpine
COPY --from=build-step /app/dist/ang-container /usr/share/nginx/html