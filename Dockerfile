FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm i 
RUN npm run build 
RUN npm install -g serve

EXPOSE 3000

ENTRYPOINT ["serve", "-s", "build" ]

