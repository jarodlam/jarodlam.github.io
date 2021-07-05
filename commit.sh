#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "Please specify commit message"
    exit 1
fi

set -x

git submodule foreach git add .
git submodule foreach git commit -m "$1"
git submodule foreach git push origin master

git add .
git commit -m "$1"
git push origin master