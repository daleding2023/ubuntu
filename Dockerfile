FROM ubuntu
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev cmake python3.10 vim gcc 
RUN apt install -y cmake python3.10 vim gcc python3-pip aria2
RUN apt clean
RUN pip3 install torch numpy sentencepiece
RUN aria2c --select-file 21-23,25,26 'magnet:?xt=urn:btih:b8287ebfa04f879b048d4d4404108cf3e8014352&dn=LLaMA'
