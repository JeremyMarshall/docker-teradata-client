FROM centos:centos7
  MAINTAINER Jeremy Marshall
  RUN yum -y install ksh && yum clean all

  ONBUILD ADD  rpms.tar.gz tmp/

  ONBUILD RUN rpm -ivh --nodeps tmp/TeraGSS_linux_x64-15.*.noarch.rpm  tmp/tdicu-15.*.noarch.rpm  tmp/tdodbc-15.*.noarch.rpm; yum clean all;

