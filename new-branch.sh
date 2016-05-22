#!/bin/bash

git -C ${HOME}/workspace checkout -b scratch-$(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 4 | head -n 1)-$(echo "${@}" | sed -e 's/ /_/g') &&
true
