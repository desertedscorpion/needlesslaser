#!/bin/bash

sudo dnf update --assumeyes &&
sudo dnf install --assumeyes nginx &&
sudo dnf update --assumeyes &&
sudo dnf clean all &&
sudo rm --recursive --force /etc/nginx &&
mkdir ${HOME}/nginx &&
git -C ${HOME}/nginx init &&
git -C ${HOME}/nginx remote add origin ssh://git@gitlab.363-283.io:2252/cte/nginx-dev-infrastructure.git &&
ln --symbolic --force ${HOME}/nginx /etc/nginx &&
true