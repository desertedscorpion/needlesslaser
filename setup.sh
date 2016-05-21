#!/bin/bash

mkdir ${HOME}/workspace &&
node /opt/needlesslaser/c9sdk/server.js -w ${HOME}/workspace -p 8080 -a &&
true