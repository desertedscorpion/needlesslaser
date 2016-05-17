#!/bin/bash

adduser --create-home ${LUSER} &&
    mkdir /home/${LUSER}/workspace &&
    echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
    chmod 0444 /etc/sudoers.d/${LUSER} &&
    su --login ${LUSER} --command "node /opt/needlesslaser/c9sdk/server.js -w /home/${LUSER}/workspace" &&
    # cp /home/${LUSER}/private/id_rsa /home/${LUSER}/.ssh/id_rsa && chmod 0600 /home/${LUSER}/.ssh/id_rsa &&
    (gpg --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    (gpg2 --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
#    pass init ${KEY_ID} && git config --global user.email "emory.merryman@gmail.com"
# && git config --global user.name "Emory Merryman" && pass git init && pass git remote add origin ${PASS_REPO} && pass git fetch origin master && pass git checkout master && pass git rebase origin/master && /usr/bin/bash
    true
