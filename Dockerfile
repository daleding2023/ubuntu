FROM registry.cn-hangzhou.aliyuncs.com/models2024/ubuntu:u22base
RUN pip3.10 install --upgrade pip
RUN pip3.10 install --upgrade setuptools
RUN pip3.10 install modelscope
RUN pip3.10 install "modelscope[multi-modal]"
RUN pip3.10 install "modelscope[nlp]"  -f https://modelscope.oss-cn-beijing.aliyuncs.com/releases/repo.html
RUN pip3.10 install torch torchvision torchaudio
RUN pip3.10 install --upgrade tensorflow==2.13.0
RUN pip3.10 install pandas==1.3.5
RUN pip3.10 install gradio==3.4.0
RUN pip3.10 install arrow==1.2.3
RUN pip3.10 install cattrs==22.2.0
RUN pip3.10 install xlrd==2.0.1
RUN pip3.10 install seaborn==0.12.2
RUN pip3.10 install matplotlib==3.5.3
RUN pip3.10 install matplotlib-inline==0.1.6
RUN pip3.10 install openpyxl==3.1.1
