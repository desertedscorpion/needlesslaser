#!/bin/bash

curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/workspace &&
git -C ${HOME}/workspace init &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/needlesslaser/lib/config ${HOME}/.ssh/config &&
chmod 0600 /${HOME}/.ssh/config &&
mkdir ${HOME}/nginx &&
git -C ${HOME}/nginx init &&
git -C ${HOME}/nginx remote add origin ssh://git@gitlab.363-283.io:2252/cte/nginx-dev-infrastructure.git &&
true