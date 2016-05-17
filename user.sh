#!/bin/bash

KEY_ID="${1}" &&
    GIT_EMAIL="${2}" &&
    GIT_NAME="${3}" &&
    PASS_REPO="${4}" &&
    WORK_REPO="${5}" &&
    mkdir ${HOME}/.ssh &&
    chmod 0700 ${HOME}/.ssh &&
    cp /opt/needlesslaser/private/id_rsa ${HOME}/.ssh/id_rsa &&
    chmod 0600 ${HOME}/.ssh/id_rsa &&
    (gpg --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    (gpg2 --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    pass init ${KEY_ID} &&
    git config --global user.email "${GIT_EMAIL}" &&
    git config --global user.name "${GIT_NAME}" &&
    pass git init &&
    pass git remote add origin ${PASS_REPO} &&
    pass pull origin master &&
    ln --symbolic --force /opt/needlesslaser/bin/post-commit ${HOME}/.password-store/.git/hooks &&
    mkdir ${HOME}/workspace &&
    git -C ${HOME}/workspace init &&
    git -C ${HOME}/workspace pull origin master &&
    ln --symbolic --force /opt/needlesslaser/bin/post-commit ${HOME}/workspace/.git/hooks &&
    node /opt/needlesslaser/c9sdk/server.js -w ${HOME}/workspace &&
    sleep 1m &&
    true



