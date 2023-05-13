@echo off
if exist %1 (
    type %1
) else (
    echo File does not exist.
)
