#!/bin/bash
#DESCRIPTION:
#This script generates a real-time diagnostic report of the system.
#It displays the current user, hostname, uptime and memory status.

# --- HEADER ---
echo "--- SYSTEM REPORT FOR $USER ---"

# --- LOGIC  ---
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Memory Usage:"
free -h

# --- REPORT ----
echo "STATUS: Report complete "
echo "TIMESTAMP: $(date)"
