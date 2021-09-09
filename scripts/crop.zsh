#!/usr/bin/env zsh

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"

PICTURE_DIR=~/Pictures
ASSETS_DIR=${0:h}/../assets
for file in $PICTURE_DIR/vlcsnap*; do
  basename="$(basename $file)"
  convert "$file" -crop 1538x1080+0+0 "$file"
  convert "$file" -resize 50%x50% "$file"
  mv $file $ASSETS_DIR/$basename
done
