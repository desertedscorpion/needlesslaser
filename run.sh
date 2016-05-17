#!/bin/bash

adduser --create-home ${LUSER} &&
    mkdir /home/${LUSER}/workspace &&
    echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
    chmod 0444 /etc/sudoers.d/${LUSER} &&
    su --login ${LUSER} --command /opt/needlesslaser/bin/user
    true
