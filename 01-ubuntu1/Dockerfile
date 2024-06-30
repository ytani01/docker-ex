FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y
RUN apt install -y net-tools sudo

# set timezone
ENV TZ=Asia/Tokyo
RUN apt install -y tzdata
RUN echo $TZ > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Aisa/Tokyo /etc/localtime

RUN echo "root:root" | chpasswd
RUN echo "ubuntu:ubuntu" | chpasswd
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/010-ubuntu

CMD ["/bin/bash"]
