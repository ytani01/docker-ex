FROM ubuntu:latest

## user, uid, group, gid
#ARG USER="ubuntu"
#ARG UID="1000"
#ARG GROUP="ubuntu"
#ARG GID="1000"
ARG USER="ytani"
ARG UID="649"
ARG GROUP="yt"
ARG GID="121"

## base apt
RUN apt update && apt upgrade -y
RUN apt install -y apt-utils net-tools sudo iputils-ping curl

## user passwd
COPY createuser.sh /tmp/
RUN echo USER=${USER}:${UID}, GROUP=${GROUP}:${GID}
RUN sh /tmp/createuser.sh ${USER} ${UID} ${GROUP} ${GID}
RUN echo 'root:root' | chpasswd

## set timezone
ENV TZ=Asia/Tokyo
RUN apt install -y tzdata
RUN echo $TZ > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Aisa/Tokyo /etc/localtime

## sshd
RUN apt install -y openssh-client openssh-server
RUN mkdir /var/run/sshd

## nodejs
##
## TODO: volta
##
#RUN curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
RUN curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
RUN apt install -y nodejs
#RUN npm cache clean --force
RUN npm install -g n
RUN apt purge -y nodejs npm
RUN apt autoremove -y
#RUN n latest
RUN n lts
RUN npm update -g npm
RUN npm install -g pnpm

## tools
#RUN apt install -y git
#CMD ["/bin/bash"]
#CMD ["/usr/sbin/sshd", "-D"]
