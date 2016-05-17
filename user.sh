#!/bin/bash

(gpg --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    (gpg2 --allow-secret-key- --import /opt/needlesslaser/private/secret.key || true ) &&
    node /opt/needlesslaser/c9sdk/server.js -w /home/"${@}"/workspace &&
    sleep 1m &&
    true
