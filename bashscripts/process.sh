#!/bin/bash

echo "Welcome to the Process and Thread Manager!"

while true; do
    echo "Please select an option:"
    echo "1. View running processes"
    echo "2. Kill a process"
    echo "3. Start a new process"
    echo "4. Exit"
    read -p "Enter your choice: " OPTION

    case "$OPTION" in
        1)
            ps aux
            ;;
        2)
            read -p "Enter the process ID to kill: " PID
            kill -9 "$PID"
            ;;
        3)
            read -p "Enter the command to start a new process: " CMD
            $CMD &
            ;;
        4)
            echo "Exiting Process and Thread Manager..."
            exit
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
done
