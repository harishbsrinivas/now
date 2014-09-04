#!/bin/bash
# Description
# ---
# Simple shell script to track what I am doing everyday. Inspired by rubygem called 'doing'.
# See README.md for setup and usage instructions.

NV_PATH="$HOME/Documents/Dropbox/nvALT"

FILE_NAME=$(date +%b | tr 'a-z' 'A-Z' )_$(date +%Y).txt

echo $file

now() {
  echo $(date "+%Y-%m-%d %H:%M:%S") - "$@" >> $NV_PATH"/"$FILE_NAME
}

now $@
tail -n 10 $NV_PATH"/"$FILE_NAME
