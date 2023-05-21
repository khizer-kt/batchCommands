@echo off
echo "---Welcome to the File System Manager!---"
:menu
echo "Please select an option:"
echo "  1. Create a directory"
echo "  2. Navigate to a directory"
echo "  3. Copy a file or directory"
echo "  4. Move a file or directory"
echo "  5. Delete a file or directory"
echo "  6. Backup files using xcopy"
echo "  7. Exit"
set /p OPTION="Enter your choice: "

if "%OPTION%"=="1" (
    echo "Enter the name of the directory to create:"
    set /p DIR="Directory name: "
    mkdir %DIR%
)

if "%OPTION%"=="2" (
    echo "Enter the path of the directory to navigate to:"
    set /p NAVPATH="Directory path: "
    cd %NAVPATH%
)

if "%OPTION%"=="3" (
    echo "Enter the source file or directory path:"
    set /p SOURCE="Source path: "
    echo "Enter the destination file or directory path:"
    set /p DEST="Destination path: "
    copy %SOURCE% %DEST%
)

if "%OPTION%"=="4" (
    echo "Enter the source file or directory path:"
    set /p SOURCE="Source path: "
    echo "Enter the destination file or directory path:"
    set /p DEST="Destination path: "
    move %SOURCE% %DEST%
)

if "%OPTION%"=="5" (
    echo "Enter the file or directory path to delete:"
    set /p DELETEPATH="Path: "
    del /s %DELETEPATH%
)

if "%OPTION%"=="6" (
    echo "Enter the source directory path:"
    set /p BACKUPSOURCE="Source path: "
    echo "Enter the destination directory path for backup:"
    set /p BACKUPDEST="Destination path: "
    xcopy %BACKUPSOURCE% %BACKUPDEST% /s /e /y
)

if "%OPTION%"=="7" (
    echo "Exiting File System Manager..."
    exit
)

goto menu
