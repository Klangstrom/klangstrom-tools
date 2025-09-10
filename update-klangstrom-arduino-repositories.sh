#!/bin/zsh

KLST_ARDUINO_REPO=../klangstrom-arduino # run from within `klangstrom-arduino` repository

cd $KLST_ARDUINO_REPO
git fetch klib
git subtree pull --prefix=libraries klib main --squash
git push