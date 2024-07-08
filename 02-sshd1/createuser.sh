#!/bin/sh -x

USER=$1
UID=$2
GROUP=$3
GID=$4

#userdel -r $USER -f
#groupdel $GROUP -f

groupadd -g $GID $GROUP -f
useradd -m -s /bin/bash -u $UID -g $GID $USER

echo "${USER}:${USER}" | chpasswd

echo "${USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/010-${USER}

sleep 10
