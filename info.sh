#!/bin/bash
echo "--- SYSTEM REPORT FOR $USER ---"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Memory Usage:"
free -h
echo "-------------------------------"
