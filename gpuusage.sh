#!/bin/bash
# Get GPU usage using nvidia-smi
gpu_usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
memory_usage=$(nvidia-smi --query-gpu=utilization.memory --format=csv,noheader,nounits)

# Output the GPU usage
echo "GPU: $gpu_usage% ($memory_usage%) "
