#!/bin/bash

VERSION="${@}" &&
curl https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz | tar -xJ -C /opt/needlesslaser &&
true