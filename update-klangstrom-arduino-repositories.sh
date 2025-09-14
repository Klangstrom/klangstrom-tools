#!/bin/zsh

KLST_REPO=../klangstrom-arduino # run from within repository

cd $KLST_REPO
git fetch klib
git subtree pull --prefix=libraries klib main --squash
git push