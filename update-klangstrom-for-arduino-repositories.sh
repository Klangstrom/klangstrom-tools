#!/bin/zsh

# run from within `klangstrom-arduino`

git fetch klib
git subtree pull --prefix=libraries klib main --squash
