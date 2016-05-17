#!/bin/bash

adduser ${LUSER} &&
    echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
    chmod 0444 /etc/sudoers.d/${LUSER} &&
    node /opt/needlesslaser/c9sdk/server.js &&
    true
