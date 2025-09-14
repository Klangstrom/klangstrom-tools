#!/bin/zsh

KLST_REPO=../klangstrom-arduino # run from within repository
KLST_PREFIX=libraries
KLST_SUBTREE=klanglibs

cd $KLST_REPO
git fetch $KLST_SUBTREE
git subtree pull --prefix=$KLST_PREFIX $KLST_SUBTREE main --squash

# NOTE push updated parent to this repository: 'git push'
# NOTE push subtree changes upstream         : 'git subtree push --prefix=$KLST_PREFIX $KLST_SUBTREE main'
