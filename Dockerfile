FROM ubuntu:20.04
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD sources.list /etc/apt/sources.list
RUN apt-get clean
RUN apt-get -y update
RUN apt-get install -y whiptail
RUN apt-get install --assume-yes apt-utils
RUN apt install -y wget
RUN apt install -y vim
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add -
RUN apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
RUN apt-get -y update
RUN apt install -y python3.10
RUN apt install -y python3-pip
RUN apt install -y cmake
RUN apt install -y aria2
RUN apt clean
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install torch numpy sentencepiece
RUN aria2c --select-file 21-23,25,26 'magnet:?xt=urn:btih:b8287ebfa04f879b048d4d4404108cf3e8014352&dn=LLaMA'
