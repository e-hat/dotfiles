#!/bin/bash 
# script for adding aliases 

# this should be in .zshrc
sentinel="# @@@ALIAS"
cfg_path="$HOME/.zshrc"

if [ ! "$#" -eq 2 ] ; then 
  echo "This script must be passed two arguments"
  echo "The first is the name of the alias to create, the second is the value of the new alias"
  return 1 2> /dev/null
fi

if [ -z "$(grep "$sentinel" "$cfg_path")" ] ; then 
  echo "$cfg_path: file missing sentinel: $sentinel"
  return 1 2> /dev/null
fi

sed -i "s*$sentinel*$sentinel\nalias $1=\'$2\'*" "$cfg_path"
source ~/.zshrc
