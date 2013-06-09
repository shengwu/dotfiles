#!/usr/bin/bash

# Create symlinks to all files in this directory except this script
me=`basename $0`
for f in *
do
  if [ "$f" != "$me" ]
  then
    ln -sf ~/.dotfiles/$f ~/.$f
  fi
done
