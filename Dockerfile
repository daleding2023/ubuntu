FROM centos:7
USER root
RUN yum install -y gcc make zlib-dev openssl-devel sqlite-devel bzip2-devel libffi-devel \
    && yum clean all
ENV PYTHON_VERSION "3.10.13"
RUN curl -SLO https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
    && tar xvf Python-${PYTHON_VERSION}.tgz \
    && cd Python-${PYTHON_VERSION} \
    && ./configure --prefix=/usr/local \
    && make \
    && make altinstall \
    && cd / \
    && rm -rf Python-${PYTHON_VERSION}*

ENV PATH "/usr/local/bin:${PATH}"
ENV PIPARG "-i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com"
#ENV PIPARG "-i https://mirrors.cloud.aliyuncs.com/pypi/simple --trusted-host mirrors.cloud.aliyuncs.com"
RUN pip3.10 install $PIPARG --upgrade pip
RUN pip3.10 install $PIPARG --upgrade setuptools
RUN pip3.10 install $PIPARG modelscope
RUN pip3.10 install $PIPARG "modelscope[multi-modal]" -f https://modelscope.oss-cn-beijing.aliyuncs.com/releases/repo.html
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
