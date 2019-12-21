FROM python:3.7

RUN apt-get update && apt-get install vim net-tools openssh-server -y
RUN git clone http://github.com/nanangqq/forDocker

WORKDIR /forDocker
#RUN chmod 777 *.sh
RUN bash poetry-install.sh
RUN bash node-install-v11.sh
RUN bash yarn-install.sh

RUN git clone http://github.com/nanangqq/nanangqq.github.io
EXPOSE 3000
WORKDIR /nanangqq.github.io
CMD node ip.js
