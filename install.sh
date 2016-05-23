#!/bin/bash

chmod 0500 /opt/needlesslaser/sbin/* &&
chmod 0555 /opt/needlesslaser/bin/* &&
dnf update --assumeyes &&
/opt/needlesslaser/sbin/install-c9sdk.sh &&
dnf update --assumeyes &&
dnf clean all &&
    adduser --create-home user &&
    su --login user /opt/needlesslaser/bin/setup.sh &&
    true
