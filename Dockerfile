FROM ubuntu:latest
LABEL maintainer k-shino <nocknocknock@gmail.com>

WORKDIR /root
RUN echo '#!/bin/bash \n\
  apt-get update -q \n\
  apt-get install -qy autoconf automake git gcc build-essential wget \n\
  wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.29-9680-rtm/softether-vpnserver-v4.29-9680-rtm-2019.02.28-linux-x64-64bit.tar.gz \n\
  tar xvzf /root/softether-vpnserver-v4.29-9680-rtm-2019.02.28-linux-x64-64bit.tar.gz \n\
  cd vpnserver \n\
  yes 1 | make \n'\
>> build.sh && chmod +x build.sh

CMD ./build.sh

