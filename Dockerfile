FROM bbania/centos:base
MAINTAINER Bart Bania <contact@bartbania.com>

RUN yum -q -y install git && \
    yum clean all

RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt

VOLUME /etc/letsencrypt /var/lib/letsencrypt

EXPOSE 443

