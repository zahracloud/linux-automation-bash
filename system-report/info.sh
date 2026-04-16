#!/bin/bash

# TITLE: info.sh
# DESCRIPTION: generates a real-time system diagnostic report.
# USAGE: ./info.sh

echo "--- SYSTEM REPORT FOR: ${USER}@$(HOSTNAME) ---"

echo "SYSTEM IDENTITY: ${hostname}"
echo "UPTIME:          ${uptime -p}"

echo -e "\nMEMORY STATUS:"
free -h

echo -e "\nDISK SPACE USAGE:"
df -h /

echo "STATUS:     Report complete"
echo "TIMESTAMP:  $(date '+%Y-%m-%d %H:%M:%S')" 

