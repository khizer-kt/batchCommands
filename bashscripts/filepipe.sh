#!/bin/bash

ext="$1"
ls -p | grep -c "$ext"
