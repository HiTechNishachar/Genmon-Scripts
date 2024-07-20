#!/bin/bash
# Get all core temperatures
temps=$(sensors | grep 'Core' | awk '{print $3}' | tr -d '+°C')

# Find the highest temperature
max_temp=$(echo "$temps" | sort -nr | head -n 1)

# Output the highest temperature
echo "$max_temp°C"
