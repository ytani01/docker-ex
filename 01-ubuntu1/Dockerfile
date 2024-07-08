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
