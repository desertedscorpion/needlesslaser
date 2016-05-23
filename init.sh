#!/bin/bash

if [ "user" != "${LUSER}" ]
then
    groupmod --new-name ${LUSER} user &&
    usermod -d /home/${LUSER} -m -g ${LUSER} -l ${LUSER} user &&
    true
fi &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
chmod 0440 /etc/sudoers.d/${LUSER} &&
ln --symbolic --force /home/${LUSER}/nginx /etc/nginx &&
echo  "${GIT_EMAIL}" "${GIT_NAME}" "${GIT_URL}" "${GIT_BRANCH_PARENT}" "${GIT_BRANCH_CHILD}" "${LDAP_USERNAME}" "${LDAP_PASSWORD}" "${LDAP_EMAIL}" "${GPG_KEY_ID}" "${PASS_GIT_URL}" &&
su --login ${LUSER} /opt/needlesslaser/bin/run "${GIT_EMAIL}" "${GIT_NAME}" "${GIT_URL}" "${GIT_BRANCH_PARENT}" "${GIT_BRANCH_CHILD}" "${LDAP_USERNAME}" "${LDAP_PASSWORD}" "${LDAP_EMAIL}" "${GPG_KEY_ID}" "${PASS_GIT_URL}" &&
true
