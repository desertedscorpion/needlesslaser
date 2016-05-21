#!/bin/bash

adduser --create-home ${LUSER} &&
su --login ${LUSER} /opt/needlesslaser/bin/setup
