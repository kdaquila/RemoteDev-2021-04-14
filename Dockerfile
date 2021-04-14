FROM node:lts-buster

RUN apt update && \
    apt install git

RUN git clone https://github.com/kdaquila/RemoteDev-2021-04-14.git src

WORKDIR /src/app

RUN npm install && \
    npm install pm2 -g

CMD pm2 ./bin/www && \
    tail -f /dev/null
