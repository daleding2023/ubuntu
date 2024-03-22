FROM registry.cn-hangzhou.aliyuncs.com/models2024/ubuntu:u22base
ENV PIPARG "-i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com"
RUN pip3.10 install $PIPARG --upgrade pip
RUN pip3.10 install $PIPARG --upgrade setuptools
RUN pip3.10 install $PIPARG modelscope
#RUN pip3.10 install matplotlib
RUN pip3.10 install $PIPARG "modelscope[multi-modal]" -f https://modelscope.oss-cn-beijing.aliyuncs.com/releases/repo.html
#RUN pip3.10 install "modelscope[multi-modal]" -f https://modelscope.oss-cn-beijing.aliyuncs.com/releases/repo.html
RUN pip3.10 install $PIPARG "modelscope[nlp]"  -f https://modelscope.oss-cn-beijing.aliyuncs.com/releases/repo.html
RUN pip3.10 install $PIPARG torch torchvision torchaudio
RUN pip3.10 install $PIPARG --upgrade tensorflow==2.13.0
RUN pip3.10 install $PIPARG pandas==1.3.5
RUN pip3.10 install $PIPARG gradio==3.4.0
RUN pip3.10 install $PIPARG arrow==1.2.3
RUN pip3.10 install $PIPARG cattrs==22.2.0
RUN pip3.10 install $PIPARG xlrd==2.0.1
RUN pip3.10 install $PIPARG seaborn==0.12.2
RUN pip3.10 install $PIPARG matplotlib==3.5.3
RUN pip3.10 install $PIPARG matplotlib-inline==0.1.6
RUN pip3.10 install $PIPARG openpyxl==3.1.1

