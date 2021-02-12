FROM ubuntu:14.04

LABEL key="Sopan <sagorkars@gmail.com>" 
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y nodejs
RUN apt-get install -y npm
COPY ./Dockerfile /opt/

ADD run.sh .

RUN chmod +x run.sh

CMD ["/bin/bash","./run.sh"]