#!/bin/bash

cd $(mktemp -d) &&
    LDAP_USERNAME="${1}" &&
    LDAP_PASSWORD="${2}" &&
    LDAP_EMAIL="${3}" &&
    echo -e "${LDAP_USERNAME}\n${LDAP_PASSWORD}\n${LDAP_EMAIL}\n" | npm adduser --registry https://npm.363-283.io &&
    git init &&
    git remote add origin ssh://git@gitlab.363-283.io:2252/emory.merryman/home-web-ui.git &&
    git pull origin develop &&
    PATH=/opt/needlesslaser/node-v6.2.0-linux-x64/bin:${PATH} &&
    npm install &&
    jspm install &&
    gulp &&
    true
    