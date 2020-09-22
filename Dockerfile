FROM node:latest

RUN mkdir -p /proxy/

WORKDIR /proxy/

COPY package.json /proxy/

RUN npm install

COPY . /proxy/
EXPOSE 9100
CMD ["npm","run","start"]
