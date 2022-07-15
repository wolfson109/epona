FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install -y \ 
    curl nodejs npm python3 python3-dev python3-pip
RUN npm install -g n
RUN n latest
RUN npm install -g npm
RUN npm install -g aws-cdk-local aws-cdk

COPY . /epona
WORKDIR /epona

RUN pip3 install -r requirements.txt
RUN pip3 install -r requirements-dev.txt