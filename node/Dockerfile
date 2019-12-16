FROM ubuntu:18.04

RUN apt-get update && apt-get install nodejs git vim python3 python3-pip net-tools openssh-server -y
RUN git clone http://github.com/nanangqq/nanangqq.github.io

EXPOSE 3000
WORKDIR /nanangqq.github.io
CMD node ip.js
