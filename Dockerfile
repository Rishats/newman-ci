FROM node:14.5
MAINTAINER Rishat Sultanov <rihasultanov@gmail.com>

ENV NEWMAN_VERSION 5.2.2

RUN npm install -g newman@${NEWMAN_VERSION};

WORKDIR /work

CMD ["newman", "--version"]
