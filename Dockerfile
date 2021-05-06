FROM ubuntu:20.10

RUN \
   apt-get -y update && \
   apt-get -y upgrade && \
   apt-get -y install cmake && \
   apt-get -y install ninja-build && \
   apt-get -y install git && \
   apt-get -y install cpio && \
   apt-get -y install sudo && \
   apt-get -y install python3-pip && \
   apt-get -y install libxml2-utils && \
   apt-get -y install protobuf-compiler && \
   apt-get -y install python3-protobuf && \
   apt-get -y install gcc-aarch64-linux-gnu && \
   apt-get -y install g++-aarch64-linux-gnu && \
   apt-get -y install device-tree-compiler

EXPOSE 22

COPY start.sh /root

ENTRYPOINT "/root/start.sh"

