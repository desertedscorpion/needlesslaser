#!/bin/bash

if [ "user" != "${LUSER}" ]
then
    usermod -l ${LUSER} user &&
    true
fi &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
chmod 0440 /etc/sudoers.d/${LUSER} &&
su --login ${LUSER} /opt/needlesslaser/bin/run &&
true
