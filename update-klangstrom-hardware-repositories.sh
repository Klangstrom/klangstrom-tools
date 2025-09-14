#!/bin/zsh

echo "this is WIP"

KLST_REPO=../klangstrom-hardware/KLST_PANDA/firmware/Middlewares/klangstrom-libraries # run from within repository

cd $KLST_REPO
git fetch klib
git subtree pull --prefix=libraries klib main --squash
git push
