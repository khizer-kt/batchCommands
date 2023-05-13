@echo off

setlocal enabledelayedexpansion

set /a num_dice=1

if not "%1"=="" set /a num_dice=%1

for /l %%i in (1,1,%num_dice%) do (
    set /a result=!random! %% 6 + 1
    set "output=!output! !result!"
)

echo %output:~1%
