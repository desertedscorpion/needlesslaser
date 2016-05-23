#!/bin/bash

curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/needlesslaser/lib/config ${HOME}/.ssh/config &&
mkdir ${HOME}/workspace &&
git -C ${HOME}/workspace init &&
ln --symbolic --force /opt/needlesslaser/bin/post-commit.sh ${HOME}/workspace/.git/hooks/post-commit &&
chmod 0600 ${HOME}/.ssh/config &&
mkdir ${HOME}/bin &&
chmod 0700 ${HOME}/bin &&
git -C ${HOME}/bin init &&
git -C ${HOME}/bin remote add origin git@github.com:decipheremory/icywaffle.git &&
ln --symbolic --force /opt/needlesslaser/bin/post-commit.sh ${HOME}/bin/.git/hooks/post-commit &&
true