#!/usr/bin/env zsh

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"

ASSETS_DIR=${0:h}/../assets
for file in $ASSETS_DIR/*.png; do
  convert "$file" -resize 50%x50% "$file"
done
