FROM node:18

LABEL key="Sopan <sagorkars@gmail.com>" 
RUN apt-get update
RUN apt-get install -y git

RUN apt-get update

RUN apt-get install -y curl

RUN npm config set registry http://registry.npmjs.org/
RUN npm config set strict-ssl false

COPY ./Dockerfile /opt/
COPY ./run.sh /opt/
ADD run.sh .

RUN chmod +x run.sh

CMD ["/bin/bash","./run.sh"]