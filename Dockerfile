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
