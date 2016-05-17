#!/bin/bash

dnf update --assumeyes &&
    dnf install --assumeyes git node make gcc python tar which sudo pass &&
    dnf update --assumeyes &&
    dnf clean all &&
    chmod 0555 /opt/needlesslaser/private &&
    chmod 0555 /opt/needlesslaser/input &&
    chmod 0777 /opt/needlesslaser/output &&
    mkdir /opt/needlesslaser/c9sdk &&
    chmod 0555 /opt/needlesslaser/c9sdk &&
    git -C /opt/needlesslaser/c9sdk init &&
    git -C /opt/needlesslaser/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/needlesslaser/c9sdk pull origin master &&
    /opt/needlesslaser/c9sdk/scripts/install-sdk.sh &&
    true
