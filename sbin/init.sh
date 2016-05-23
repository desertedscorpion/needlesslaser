#!/bin/bash

if [ "user" != "${LUSER}" ]
then
    groupmod --new-name ${LUSER} user &&
    usermod -d /home/${LUSER} -m -g ${LUSER} -l ${LUSER} user &&
    true
fi &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
chmod 0440 /etc/sudoers.d/${LUSER} &&

env > /opt/needlesslaser/environment &&
su --login ${LUSER} /opt/needlesslaser/bin/run  &&
true
