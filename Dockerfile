FROM ubuntu:16.04
MAINTAINER mpppk
RUN apt-get update
RUN apt-get install --no-install-recommends -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install curl iputils-ping net-tools vim -y
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python
RUN pip install pywinrm
COPY hosts /etc/ansible/hosts
