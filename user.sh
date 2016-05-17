#!/bin/bash

# (gpg --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
#    (gpg2 --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    mkdir ${HOME}/workspace &&
    git -C ${HOME}/workspace init &&
    ln --symbolic --force /opt/needlesslaser/bin/post-commit ${HOME}/workspace/.git/hooks &&
    node /opt/needlesslaser/c9sdk/server.js -w ${HOME}/workspace &&
    sleep 1m &&
    true
