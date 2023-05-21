#!/bin/bash

free_physical_memory=$(free -h --si | awk 'NR==2 {print $7}')
total_visible_memory=$(free -h --si | awk 'NR==2 {print $2}')

echo "Free Physical Memory: $free_physical_memory"
echo "Total Visible Memory Size: $total_visible_memory"
