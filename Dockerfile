#FROM ubuntu:20.04
#FROM registry.cn-hangzhou.aliyuncs.com/models2024/ubuntu:llama.cpp  #sources.list 
FROM registry.cn-hangzhou.aliyuncs.com/models2024/ubuntu:llama.cpp.v0 #wget
#RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
#RUN rm -rf /etc/apt/sources.list
#ADD sources.list /etc/apt/sources.list
#RUN apt-get clean
#RUN apt-get -y update
#RUN apt-get -y update --fix-missing
#RUN apt-get -y upgrade
#RUN apt install -y wget
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
RUN apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
RUN apt-get -y update
RUN apt install -y build-essential
RUN apt install -y zlib1g-dev
RUN apt install -y libncurses5-dev
RUN apt install -y libgdbm-dev
RUN apt install -y libnss3-dev
RUN apt install -y libssl-dev
RUN apt install -y libreadline-dev
RUN apt install -y libffi-dev
RUN apt install -y libsqlite3-dev
RUN apt install -y libbz2-dev
RUN apt install -y vim
RUN apt install -y gcc
RUN apt install -y cmake
RUN apt install -y python3.10
RUN apt install -y python3-pip
RUN apt install -y aria2
#RUN apt clean
#RUN apt-get clean \
#    && rm -rf /var/lib/apt/lists/*
#RUN pip3 install torch numpy sentencepiece
#RUN aria2c --select-file 21-23,25,26 'magnet:?xt=urn:btih:b8287ebfa04f879b048d4d4404108cf3e8014352&dn=LLaMA'
