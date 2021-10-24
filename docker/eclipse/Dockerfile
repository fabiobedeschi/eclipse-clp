FROM ubuntu

ARG eclipse_version

RUN apt-get update && \
    apt-get install -y curl

RUN mkdir /root/eclipseclp-install
WORKDIR /root/eclipseclp-install

RUN curl https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/UNPACK -o UNPACK
RUN chmod 755 UNPACK

RUN curl https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/eclipse_basic.tgz -o eclipse_basic.tgz
# RUN tar xpfz eclipse_basic.tgz --no-same-owner

RUN curl https://eclipseclp.org/Distribution/Builds/${eclipse_version}/x86_64_linux/eclipse_doc.tgz -o eclipse_doc.tgz
# RUN tar xpfz eclipse_doc.tgz --no-same-owner

RUN ./UNPACK eclipse_basic.tgz eclipse_doc.tgz
RUN ./RUNME

RUN ln -s $(pwd)/bin/x86_64_linux/eclipse /usr/local/bin/eclipse

RUN mkdir /root/eclipseclp
WORKDIR /root/eclipseclp

RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
