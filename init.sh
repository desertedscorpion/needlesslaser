#!/bin/bash

if [ "user" != "${LUSER}" ]
then
    usermod -l ${LUSER} user &&
    true
fi &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
chmod 0440 /etc/sudoers.d/${LUSER} &&
ln --symbolic --force /home/${LUSER}/nginx /etc/nginx &&
su --login ${LUSER} /opt/needlesslaser/bin/run "${GIT_EMAIL}" "${GIT_NAME}" "${GIT_URL}" "${GIT_BRANCH_PARENT}" "${GIT_BRANCH_CHILD}" &&
true
