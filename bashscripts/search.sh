#!/bin/bash

search="$1"

find . -type f -name "*$search*" -print
