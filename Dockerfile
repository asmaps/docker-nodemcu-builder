FROM ubuntu:14.04
MAINTAINER asmaps

ADD sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y make unrar autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python python-serial sed \
    git wget unzip
RUN useradd someuser -d /home/uid1000
RUN chown someuser:someuser /opt
USER someuser
RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git /opt/esp-open-sdk
WORKDIR /opt/esp-open-sdk
RUN make STANDALONE=y
RUN git clone https://github.com/nodemcu/nodemcu-firmware.git /opt/nodemcu-firmware
ENV PATH /opt/esp-open-sdk/xtensa-lx106-elf/bin:$PATH
WORKDIR /opt/nodemcu-firmware

ENTRYPOINT ["make"]
CMD []
