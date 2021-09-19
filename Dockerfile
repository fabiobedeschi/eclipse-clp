FROM ubuntu

RUN apt-get update
RUN apt-get install -y tar curl

RUN mkdir /root/eclipseclp-install
WORKDIR /root/eclipseclp-install

RUN curl https://eclipseclp.org/Distribution/CurrentRelease/7.0_57%20x86_64_linux%20Intel-64bit-Linux/eclipse_basic.tgz -o eclipse_basic.tgz
RUN curl https://eclipseclp.org/Distribution/CurrentRelease/7.0_57%20x86_64_linux%20Intel-64bit-Linux/eclipse_doc.tgz -o eclipse_doc.tgz

RUN tar xpfz eclipse_basic.tgz
RUN tar xpfz eclipse_doc.tgz

RUN ./RUNME

ENV PATH=$PATH:/root/eclipseclp-install/bin/x86_64_linux

RUN mkdir /root/eclipseclp
WORKDIR /root/eclipseclp

VOLUME [ "/root/eclipseclp" ]
