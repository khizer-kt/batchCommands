#!/bin/bash

while true; do
    clear
    echo "Network Activity Monitor"
    echo "========================"
    echo "1. Display current data usage"
    echo "2. Display packet loss"
    echo "3. Exit"
    read -p "Enter your choice: " choice

    case "$choice" in
        1)
            netstat -e | grep "Bytes"
            read -p "Press Enter to continue..."
            ;;
        2)
            ping -c 10 google.com | grep "packet loss"
            read -p "Press Enter to continue..."
            ;;
        3)
            exit
            ;;
        *)
            echo "Invalid choice. Press Enter to continue..."
            ;;
    esac
done
