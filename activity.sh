#!/bin/bash

bash ./dates.sh $1 $2 | while read -r line ; do
    bash ./commit.sh "$line"
done
