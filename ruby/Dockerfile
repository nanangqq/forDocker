FROM ubuntu:16.04

RUN apt update && apt install openssh-server vim net-tools node.js git -y
RUN git clone https://github.com/nanangqq/nanangqq.github.io
WORKDIR /nanangqq.github.io

EXPOSE 3000
CMD ["/bin/bash"]

