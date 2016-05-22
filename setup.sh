#!/bin/bash

curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/workspace &&
git -C ${HOME}/workspace init &&
ln --symbolic --force /opt/needlesslaser/bin/post-commit ${HOME}/workspace/.git/hooks/post-commit &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/needlesslaser/lib/config ${HOME}/.ssh/config &&
chmod 0600 ${HOME}/.ssh/config &&
mkdir ${HOME}/bin &&
chmod 0700 ${HOME}/bin &&
ln --symbolic --force /opt/needlesslaser/bin/rebase ${HOME}/bin &&
ln --symbolic --force /opt/needlesslaser/bin/new-branch ${HOME}/bin &&
mkdir ${HOME}/nginx &&
git -C ${HOME}/nginx init &&
git -C ${HOME}/nginx remote add origin ssh://git@gitlab.363-283.io:2252/cte/nginx-dev-infrastructure.git &&
npm set registry https://npm.363-283.io &&
npm set cafile /opt/needlesslaser/private/ca.crt &&
true