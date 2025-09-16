#!/bin/zsh

# TODO WIP this is macOS only for now

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)"

SRC="$SCRIPT_PATH/../klangstrom-libraries"
DST="$HOME/Documents/Arduino/libraries"
echo
echo "linking libraries from '$SRC' into '$DST'"
echo 
"$SCRIPT_PATH/link_libraries.sh" "$SCRIPT_PATH/klangstrom-libraries.config" $SRC $DST
