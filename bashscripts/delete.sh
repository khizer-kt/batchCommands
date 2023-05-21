#!/bin/bash

file="$1"

if [ -e "$file" ]; then
    rm "$file"
    echo "File \"$file\" deleted."
else
    echo "File \"$file\" not found."
fi
