FROM ubuntu:18.04
RUN sed "s/archive.ubuntu.com/mirror.kakao.com/g" /etc/apt/sources.list > /etc/apt/sources.list.mod
RUN mv /etc/apt/sources.list /etc/apt/sources.list.org
RUN mv /etc/apt/sources.list.mod /etc/apt/sources.list
RUN apt-get update && apt-get install -y openssh-server vim net-tools git


# ruby install
RUN apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev libpq-dev
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata

WORKDIR /root
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN bash -c 'export PATH="$HOME/.rbenv/bin:$PATH"; eval "$(rbenv init -)"; rbenv install 2.6.3'
RUN echo "gem: --no-document" > ~/.gemrc
RUN bash -c 'export PATH="$HOME/.rbenv/bin:$PATH"; eval "$(rbenv init -)"; rbenv global 2.6.3; gem install bundler; gem install rails -v 5.2.3'

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN echo 'rbenv global 2.6.3' >> ~/.bashrc


# # postgresql install
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get install -y tzdata
# RUN apt-get install -y postgresql postgresql-contrib libpq-dev


WORKDIR /root
RUN git clone http://github.com/nanangqq/forDocker
WORKDIR /root/forDocker
RUN chmod 777 *.sh
RUN bash node-install-v11.sh 12
RUN bash yarn-install.sh

# open returning IP address server
WORKDIR /root
RUN git clone https://github.com/nanangqq/nanangqq.github.io
WORKDIR /root/nanangqq.github.io
EXPOSE 80
CMD ["node", "ip.js", "80"]

