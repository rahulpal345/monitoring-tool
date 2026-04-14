#!/bin/bash

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
mem=$(free -m | awk 'NR==2 {print $3}')
disk=$(df -h / | awk 'NR==2 {print $5}')

echo "===== System Health ====="
echo "CPU: $cpu%"
echo "Memory Used: $mem MB"
echo "Disk Used: $disk"