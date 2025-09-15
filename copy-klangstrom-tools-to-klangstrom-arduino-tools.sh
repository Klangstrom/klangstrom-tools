#!/bin/sh

src=../klangstrom-tools
dst=../klangstrom-arduino/tools
list=klangstrom-tools-filelist.txt

mkdir -p "$dst"

while read -r f; do
  [ -z "$f" ] && continue   # skip empty lines
  cp "$src/$f" "$dst/"
done < "$list"
