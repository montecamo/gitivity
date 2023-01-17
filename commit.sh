#!/bin/bash

if git log --pretty=format:"%s" | grep -q "$1"; then
  exit 1
fi

echo $1 > dummy.txt

git add .

GIT_COMMITTER_DATE="$1" GIT_AUTHOR_DATE="$1" git commit -m "$1" --quiet
