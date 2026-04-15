#!/bin/bash

# TITLE: Autobackup.sh
# DESCRIPTION: Creates a timestamped backup of a specific file.
# USAGE: /.AutoBackup.sh <filename>

TARGET="$1"

if [ -z "$TARGET" ]; then
	echo "ERROR: Please provide a filename to back up."
	echo "Usage: $0 file.name.txt"
	exit 1
fi

TIMESTAMP=$(date +%Y-%m-%d)
BACKUP_NAME="${TARGET}_${TIMESTAMP}.bak"

cp "$TARGET" "$BACKUP_NAME"
echo "SUCCESS: Backup created as $BACKUP_NAME"
