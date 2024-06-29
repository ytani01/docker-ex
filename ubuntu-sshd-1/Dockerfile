FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y

RUN apt install -y net-tools sudo vim iputils-ping

## set timezone
ENV TZ=Asia/Tokyo
RUN apt install -y tzdata
RUN echo $TZ > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Aisa/Tokyo /etc/localtime

## sshd
RUN apt install -y openssh-server
RUN mkdir /var/run/sshd
#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo 'ubuntu:ubuntu' | chpasswd

#CMD ["/bin/bash"]
#CMD ["/usr/sbin/sshd", "-D"]
