#!/usr/bin/env bash

if [[ ! -d /root/eclipseclp-install/bin ]]; then

    apt-get update && apt-get install -y tar curl

    mkdir /root/eclipseclp-install
    cd /root/eclipseclp-install

    curl $ECLIPSE_DOWNLOAD_URL -o eclipse_basic.tgz
    tar xpfz eclipse_basic.tgz --no-same-owner

    if [[ $DOWNLOAD_DOCS == 'true' ]]; then
        curl $ECLIPSE_DOCS_DOWNLOAD_URL -o eclipse_doc.tgz
        tar xpfz eclipse_doc.tgz --no-same-owner
    fi

    ./RUNME

    echo 'PATH=$PATH:/root/eclipseclp-install/bin/x86_64_linux' >> ~/.bashrc
fi

echo 'Ready!'
echo 'Use "make eclipse" or "make bash" to connect.'
tail -f /dev/null
