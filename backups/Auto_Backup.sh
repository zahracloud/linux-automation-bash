#!/bin/bash
#DESCRIPTION:
#This script ask a user for a filename
#and then creates a copy of that file adding a timestamp and  .bak as extensions

# --- HEADER ---
echo " --- Auto-Backup ---"

# --- INPUT ---
read -p "Enter the filename to backup:" FILENAME

# --- LOGIC ---
# 1. Check if the file actually exists
if [ -f "$FILENAME" ]; then
	TIMESTAMP=$(date +%Y-%m-%d_%H-%M)
	BACKUP_NAME="${FILENAME}.${TIMESTAMP}.bak"
	cp -p "$FILENAME" "$BACKUP_NAME"

# 3. Report 
        echo "SUCCESS: Backup of $FILENAME created as $BACKUP_NAME"
else
	echo "ERROR: File '$FILENAME' not found"
	exit 1
fi
