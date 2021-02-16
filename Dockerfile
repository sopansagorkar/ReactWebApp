FROM ubuntu:14.04

LABEL key="Sopan <sagorkars@gmail.com>" 
RUN apt-get update
RUN apt-get install -y git

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get update
RUN npm config set registry http://registry.npmjs.org/
RUN npm config set strict-ssl false

COPY ./Dockerfile /opt/

ADD run.sh .

RUN chmod +x run.sh

CMD ["/bin/bash","./run.sh"]