#!/bin/bash

curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/workspace &&
git -C ${HOME}/workspace init &&
ln --symbolic --force /opt/needlesslaser/bin/post-commit ${HOME}/workspace/.git/hooks/post-commit &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/needlesslaser/lib/config ${HOME}/.ssh/config &&
chmod 0600 /${HOME}/.ssh/config &&
true