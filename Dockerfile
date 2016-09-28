FROM ubuntu:latest
RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /app
COPY package.json /app
COPY npmrc /root/.npmrc
WORKDIR /app
RUN npm install