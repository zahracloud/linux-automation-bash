#!/bin/bash
#DESCRIPTION:
#This script generates a standardized "Identity" for a project by creating a versioned 
#directory. It acts as a template for organizing project files.

# --- HEADER ---
echo "---  PROJECT IDENTITY CREATOR ---" 

# --- INPUT ---
echo "Enter project name:"
read PROJECT

echo "Enter version number:"
read VERSION

# --- LOGIC ---
#Creating the identity folder
mkdir -p "${PROJECT}_v${VERSION}"

# --- REPORT ---
echo "STATUS: Identity created"
echo "LOCATION: ./${PROJECT}_v${VERSION}"
echo "TIMESTAMP: $(date)"

