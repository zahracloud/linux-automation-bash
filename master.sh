#!/bin/bash

# TITLE: master.sh 
# DESCRIPTION: This script performs pre-flight envoiremnet checks, fixes permissions,
# and provides an interactive interface to run system report, backups and provisioning tools.
# USAGE: ./master.sh

DIR1="backups"
DIR2="system-report"
DIR3="user-provisioning"

echo " --- SYSTEM CHECK ---"
echo ""
if [ -d "$DIR1" ]; then
	echo "Success: Backups directory found."
else
	echo "Error: Backups directory not found."
	exit 1
fi


if [ -d "$DIR2" ]; then
	echo "Success: System Report directory found."
else
	echo "Error: System Report directory not found."
	exit 1
fi


if [ -d "$DIR3" ]; then
	echo "Success: User Provisioning directory found."
else
	echo "Error: User Provisioning directory not founf."
	exit 1
fi

echo ""
echo "--- VERIFYING TOOL PERMISSIONS ---"
echo ""

# Checking Auto_Backups.sh
if [ -x "$DIR1/Auto_Backups.sh" ]; then
	echo "Backup  tool: Permissions verified."
else
	chmod +x "$DIR1/Auto_Backup.sh"
	echo "Backup tool: Permissions optimized."
fi


# Checking info.sh

if [ -x "$DIR2/info.sh" ]; then
	echo "System Report tool: Permissions verified."
else
	chmod +x "$DIR2/info.sh"
	echo "System Report tool: Permissions optimized."
fi


# Checking identity.sh
if [ -x "$DIR3/identity.sh" ]; then
	echo "Project Setup tool: Permissions verified."
else
	chmod +x "$DIR3/identity.sh"
	echo "Project Setup tool: Permissions optimized."
fi

echo ""
echo " --- CUURENT SYSTEM HEALTH REPORT ---"
echo""

./$DIR2/info.sh

 # 1. Backup decision
 read -p "Would you like to run a backup of your work now? (y/n): " backup_ans
 if [ "backup_ans" == "y" ]; then
	./$DIR1/Auto_Backups.sh
else
	echo "Backup skipped."
 fi

 # 2. New project
 read -p "Would you want to start a new project? (y/n): " project_ans
 if [ "$project_ans" == "y" ]; then
	 read -p "Enter project name: " pr_name
	 read -p "Enter version number: " vr_num
	 ./$DIR3/identity.sh "$pr_name" "$vr_num"
 fi


