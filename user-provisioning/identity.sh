#!/bin/bash

# TITLE: identity.sh
# DESCRIPTION: Automates standardized project directory creation using versioning.
# USAGE: ./identity.sh <project_name> <version_number>

PROJECT="$1"
VERSION="$2"

if [ -z "$PROJECT" ]; then
	echo "ERROR: Missing project name"
	echo "Usage: $0 <project_name> <version_number>"
	exit 1
fi

if [ -z "$VERSION" ]; then
	echo "ERROR: Missing version number"
	echo "Usage: $0 $PROJECT  <version_number>"
fi

DIR_NAME="${PROJECT}_v${VERSION}"

if [ -d "$DIR_NAME"]; then
	echo "NOTICE: The folder '$DIR_NAME' already exists. No action taken."
	exit 0
else 
	mkdir -p "$DIR_NAME"
	
	echo "--- PROJECT IDENTITY CREATOR ---"
	echo "STATUS: Identity Folder Created Successfully"
	echo "LOCATION: ./${DIR_NAME}"
	echo "TIMESTAMP: $(date '+%Y-%m-%d %H:%M:%S')"
fi

