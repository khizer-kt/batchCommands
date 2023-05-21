#!/bin/bash

largestfile=""
largestsize=0

for file in *; do
    size=$(stat -c %s "$file")
    if ((size > largestsize)); then
        largestsize=$size
        largestfile=$file
    fi
done

echo "$largestfile"
