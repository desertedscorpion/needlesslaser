#!/bin/bash

mkdir ${HOME}/workspace &&
curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/needlesslaser/lib/config ${HOME}/.ssh/config &&
chmod 0600 /${HOME}/.ssh/config &&
true