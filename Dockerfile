FROM centos
MAINTAINER darkidiot <darkidiot@icloud.com>

RUN yum update && yum install cmake -y && yum install gcc-c++ -y && yum install gdb -y && yum install gdb-gdbserver -y

RUN mkdir -p deploy/project
WORKDIR deploy/project

ONBUILD RUN ls -al
STOPSIGNAL 0
HEALTHCHECK --interval=5m --timeout=5s --retries=5