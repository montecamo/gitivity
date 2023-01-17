#!/bin/bash

cd $1

git log --pretty=format:"%ad" --author="$2"
