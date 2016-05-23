#!/bin/bash

PARENT="${@}" &&
CHILD="$(git rev-parse --abbrev-ref HEAD)" &&
git fetch origin "${PARENT}" &&
git checkout "${PARENT}" &&
git rebase origin/"${PARENT}" &&
git checkout "${CHILD}" &&
git rebase -i "${PARENT}" &&
git checkout "${PARENT}" &&
git rebase "${CHILD}" &&
git push origin "${PARENT}" &&
true