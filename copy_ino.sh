#!/bin/zsh
# usage: ./copy_ino.sh /path/to/source /path/to/destination

src="$1"
dst="$2"

if [ -z "$src" ] || [ -z "$dst" ]; then
    echo "usage: $0 <source_dir> <destination_dir>"
    exit 1
fi

mkdir -p "$dst"

# find and copy all .ino files
find "$src" -type f -name "*.ino" | while read -r file; do
    cp "$file" "$dst"/
done