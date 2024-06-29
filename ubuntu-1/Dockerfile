FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y
RUN apt install -y net-tools sudo

# set timezone
ENV TZ=Asia/Tokyo
RUN apt install -y tzdata
RUN echo $TZ > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Aisa/Tokyo /etc/localtime

CMD ["/bin/bash"]
