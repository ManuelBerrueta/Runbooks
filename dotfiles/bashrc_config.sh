#!/bin/bash

# Script to append custom configurations to .bashrc
# Usage: ./add_to_bashrc.sh [path_to_bashrc]
#   If no path is provided, defaults to $HOME/.bashrc

# =============================================================================
# CUSTOM CONFIGURATIONS
# =============================================================================
# Add your aliases, functions, and settings here
# They will be appended to the .bashrc file

CUSTOM_CONFIG='
# Show current Zulu time in ISO 8601 format
alias zulu_time='"'"'date -u +"%Y-%m-%dT%H:%M:%SZ"'"'"'
'

# Marker to identify our custom content
MARKER_START="# ====== Custom Configurations (added by add_to_bashrc.sh) ======"
MARKER_END="# ====== End Custom Configurations ======"

# =============================================================================
# SCRIPT LOGIC
# =============================================================================

# Determine the target .bashrc file
if [ -n "$1" ]; then
    BASHRC_PATH="$1"
    echo "Using provided path: $BASHRC_PATH"
else
    BASHRC_PATH="$HOME/.bashrc"
    echo "Using default path: $BASHRC_PATH"
fi

# Check if the file exists, create if it doesn't
if [ ! -f "$BASHRC_PATH" ]; then
    echo "File $BASHRC_PATH does not exist. Creating it..."
    touch "$BASHRC_PATH"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create $BASHRC_PATH"
        exit 1
    fi
fi

# Check if we have write permission
if [ ! -w "$BASHRC_PATH" ]; then
    echo "Error: No write permission for $BASHRC_PATH"
    exit 1
fi

# Check if our custom content is already present
if grep -q "$MARKER_START" "$BASHRC_PATH"; then
    echo "Custom configurations already present in $BASHRC_PATH"
    echo "To update, remove the existing section between the markers and run again."
    exit 0
fi

# Create a backup
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_PATH="${BASHRC_PATH}.backup.${TIMESTAMP}"
cp "$BASHRC_PATH" "$BACKUP_PATH"
if [ $? -eq 0 ]; then
    echo "Backup created: $BACKUP_PATH"
else
    echo "Warning: Failed to create backup"
fi

# Append the custom configurations
echo "" >> "$BASHRC_PATH"
echo "$MARKER_START" >> "$BASHRC_PATH"
echo "$CUSTOM_CONFIG" >> "$BASHRC_PATH"
echo "$MARKER_END" >> "$BASHRC_PATH"

if [ $? -eq 0 ]; then
    echo "✓ Successfully appended custom configurations to $BASHRC_PATH"
    echo ""
    echo "To apply changes immediately, run:"
    echo "  source $BASHRC_PATH"
    echo ""
    echo "Or open a new terminal session."
else
    echo "Error: Failed to append configurations to $BASHRC_PATH"
    exit 1
fi
