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
RUN apt install -y sudo curl tzdata

## set timezone
ENV TZ=Asia/Tokyo
RUN echo $TZ > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Aisa/Tokyo /etc/localtime

## user passwd
RUN groupadd -g $GID $GROUP -f && useradd -m -s /bin/bash -u $UID -g $GID $USER
RUN echo "${USER}:${USER}" | chpasswd
RUN echo "${USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/010-${USER}

RUN echo 'root:root' | chpasswd

## sshd
#RUN apt install -y openssh-client openssh-server
#RUN mkdir /var/run/sshd

## nodejs
RUN curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
RUN apt install -y nodejs
RUN npm install -g n
RUN apt purge -y nodejs npm
RUN apt autoremove -y
RUN n lts
RUN npm update -g npm
RUN npm install -g pnpm

## tools
#RUN apt install -y git
#CMD ["/bin/bash"]
#CMD ["/usr/sbin/sshd", "-D"]
