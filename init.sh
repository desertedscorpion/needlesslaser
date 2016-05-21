#!/bin/bash

adduser --create-home ${LUSER} &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
su --login ${LUSER} /opt/needlesslaser/bin/setup
