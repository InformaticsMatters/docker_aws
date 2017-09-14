FROM centos:7
MAINTAINER tdudgeon@inforamticsmatters.com

RUN yum -y install epel-release &&\
 yum update -y &&\
 yum install -y python-pip groff &&\
 pip install awscli &&\
 rm -rf /var/cache/yum &&\
 yum clean all

RUN useradd -m centos -s /bin/bash
USER centos
WORKDIR /home/centos
