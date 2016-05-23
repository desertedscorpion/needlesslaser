#!/bin/bash

source /opt/needlesslaser/private/ldap.properties &&
source /opt/needlesslaser/private/git.properties &&
source /opt/needlesslaser/private/pass.properties &&
cp /opt/needlesslaser/private/id_rsa ${HOME}/.ssh/id_rsa &&
chmod 0600 ${HOME}/.ssh/id_rsa &&
git config --global user.email "${GIT_EMAIL}" &&
git config --global user.name "${GIT_NAME}" &&
(gpg --allow-secret-key --import /opt/needlesslaser/private/secret.key || true ) &&
(gpg2 --allow-secret-key --import /opt/needlesslaser/private/secret.key || true ) &&
gpg --import-ownertrust /opt/needlesslaser/private/owner.trust &&
pass init ${PASS_GPG_KEY_ID} &&
pass git init &&
pass git remote add origin ${PASS_GIT_URL} &&
# pass git pull origin master &&
ln --symbolic --force /opt/needlesslaser/bin/post-commit.sh ${HOME}/.password-store/.git/hooks/post-commit &&
node /opt/needlesslaser/c9sdk/server.js --listen 0.0.0.0 -w ${HOME}/workspace -p 8080 --auth ${USER}:${USER} &&
true