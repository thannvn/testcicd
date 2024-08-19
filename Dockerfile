FROM node:16.17-alpine

WORKDIR /app/be

COPY package*.json ./
RUN npm install
COPY . .
ENV TZ=Asia/Ho_Chi_Minh

EXPOSE 3001
CMD [ "node", "./bin/www" ]