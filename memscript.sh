#!/bin/bash
# Get total and used memory in human-readable format
mem_info=$(free -h | grep Mem)
total_mem=$(echo $mem_info | awk '{print $2}')
used_mem=$(echo $mem_info | awk '{print $3}')

# Convert to bytes to calculate usage percentage
mem_info_bytes=$(free | grep Mem)
total_mem_bytes=$(echo $mem_info_bytes | awk '{print $2}')
used_mem_bytes=$(echo $mem_info_bytes | awk '{print $3}')

# Calculate usage percentage and format it to one decimal place
usage_percent=$(awk "BEGIN {printf \"%.1f\", ($used_mem_bytes/$total_mem_bytes)*100}")

# Output the memory usage with percentage
echo "RAM: $usage_percent% ($used_mem)"
