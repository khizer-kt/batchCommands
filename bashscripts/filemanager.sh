#!/bin/bash

echo "---Welcome to the File System Manager!---"

while true; do
    echo "Please select an option:"
    echo "  1. Create a directory"
    echo "  2. Navigate to a directory"
    echo "  3. Copy a file or directory"
    echo "  4. Move a file or directory"
    echo "  5. Delete a file or directory"
    echo "  6. Backup files using rsync"
    echo "  7. Exit"
    read -p "Enter your choice: " OPTION

    case "$OPTION" in
        1)
            read -p "Enter the name of the directory to create: " DIR
            mkdir "$DIR"
            ;;
        2)
            read -p "Enter the path of the directory to navigate to: " PATH
            cd "$PATH" || echo "Directory not found!"
            ;;
        3)
            read -p "Enter the source file or directory path: " SOURCE
            read -p "Enter the destination file or directory path: " DEST
            cp -r "$SOURCE" "$DEST"
            ;;
        4)
            read -p "Enter the source file or directory path: " SOURCE
            read -p "Enter the destination file or directory path: " DEST
            mv "$SOURCE" "$DEST"
            ;;
        5)
            read -p "Enter the file or directory path to delete: " PATH
            rm -r "$PATH"
            ;;
        6)
            read -p "Enter the source directory path: " SOURCE
            read -p "Enter the destination directory path for backup: " DEST
            rsync -av "$SOURCE" "$DEST"
            ;;
         7)
            echo "Exiting File System Manager..."
            exit
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac
done
