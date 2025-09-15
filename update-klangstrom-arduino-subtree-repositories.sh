#!/bin/zsh

KLST_REPO=../klangstrom-arduino # run from within repository
KLST_PREFIX=libraries
KLST_SUBTREE=klanglibs

cd $KLST_REPO
git fetch $KLST_SUBTREE
git subtree pull --prefix=$KLST_PREFIX $KLST_SUBTREE main --squash

echo
printf "push host repo to origin/main? [y/N] "
read -r ans
if printf '%s' "$ans" | grep -qi '^y'; then
  echo "== pushing host repo (with lease) =="
  git push --follow-tags --force-with-lease origin main
else
  echo "skipping host push."
fi

echo
printf "push subtree ($KLST_PREFIX) back to %s:main using split? [y/N] " "$KLST_SUBTREE"
read -r ans2
if printf '%s' "$ans2" | grep -qi '^y'; then
  split_branch="subtree-split-$(date +%Y%m%d%H%M%S)"
  echo "== creating split branch: $split_branch =="
  git subtree split --prefix="$KLST_PREFIX" -b "$split_branch"
  echo "== pushing split to subtree upstream =="
  git push --force-with-lease "$KLST_SUBTREE" "$split_branch:main"
  echo "== cleanup local split branch =="
  git branch -D "$split_branch"
else
  echo "skipping subtree upstream push."
fi

# NOTE push subtree changes upstream         : 'git subtree push --prefix=$KLST_PREFIX $KLST_SUBTREE main'
