#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" 
source "$DIR/../utils.sh"

# TITLE: Autobackup.sh
# DESCRIPTION: Creates a timestamped backup of a specific file.
# USAGE: /.AutoBackup.sh <filename>

DEST_DIR="$DIR/archive"
mkdir -p "$DEST_DIR"

TARGET=${1:-"$DIR/../system-report"}

TIMESTAMP=$(date +%Y-%m-%d)
BACKUP_NAME="backup_$(basename "$TARGET")_$TIMESTAMP.bak"

if cp -r "$TARGET" "$DEST_DIR/$BACKUP_NAME"; then
	print_success "SUCCESS: Backup created as $BACKUP_NAME"
else
	print_error "ERROR: Backup failed!"
	exit 1
fi
