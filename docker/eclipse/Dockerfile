FROM debian:stable-slim

ARG eclipse_version="7.0_57"
ARG workdir="/root/eclipseclp"

RUN mkdir -p /root/eclipseclp-install
WORKDIR /root/eclipseclp-install

ADD https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/UNPACK UNPACK
RUN chmod 755 UNPACK

ADD https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/eclipse_basic.tgz eclipse_basic.tgz

ADD https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/eclipse_doc.tgz eclipse_doc.tgz

RUN ./UNPACK eclipse_basic.tgz eclipse_doc.tgz
RUN ./RUNME

RUN ln -s $(pwd)/bin/x86_64_linux/eclipse /usr/local/bin/eclipse

RUN mkdir -p "${workdir}"
WORKDIR "${workdir}"

CMD [ "eclipse" ]
