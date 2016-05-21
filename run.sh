#!/bin/bash

GIT_EMAIL="${1}" &&
GIT_NAME="${2}" &&
GIT_URL="${3}" &&
GIT_BRANCH_PARENT="${4}" &&
GIT_BRANCH_CHILD="${5}" &&
cp /opt/needlesslaser/private/id_rsa ${HOME}/.ssh/id_rsa &&
chmod 0600 ${HOME}/.ssh/id_rsa &&
git config --global user.email "${GIT_EMAIL}" &&
git config --global user.name "${GIT_NAME}" &&
git -C ${HOME}/workspace remote add origin ${GIT_URL} &&
git -C ${HOME}/workspace pull origin "${GIT_BRANCH_PARENT}" &&
git -C ${HOME}/workspace checkout -b scratch-$(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 4 | head -n 1)-$(echo "${GIT_BRANCH_CHILD}" | sed -e 's/ /_/g') &&
node /opt/needlesslaser/c9sdk/server.js --listen 0.0.0.0 -w ${HOME}/workspace -p 8080 --auth ${USER}:${USER} &&
true