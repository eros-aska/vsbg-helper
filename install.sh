#!/bin/bash

PATCH_BEAM_DIR=~/beam
SUITE_LOG_DIR=~/suite_log

if [ ! -d ${PATCH_BEAM_DIR} ];then
    mkdir -p ${PATCH_BEAM_DIR}
fi

if [ ! -d ${SUITE_LOG_DIR} ];then
    mkdir -p ${SUITE_LOG_DIR}
fi

cp bitbake-host/env/.bash_aliases ~/.bash_aliases
source ~/.bash_aliases

cp bitbake-host/* ~/

echo "source ~/.git-prompt.sh" >> /root/.bashrc
echo "source ~/.ps1gitrc" >> /root/.bashrc

source ~/.bashrc
source ~/.bash_aliases
