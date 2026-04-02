#!/bin/bash

# Script to append custom configurations to .bashrc
# Usage: ./add_to_bashrc.sh [path_to_bashrc]
#   If no path is provided, defaults to $HOME/.bashrc

# =============================================================================
# CUSTOM CONFIGURATIONS
# =============================================================================
# Add your aliases, functions, and settings here
# They will be appended to the .bashrc file

CUSTOM_CONFIG='\n# Show current Zulu time in ISO 8601 format
alias zulu_time="'date -u +\"%Y-%m-%dT%H:%M:%SZ\"'"

# Krew: kubectl plugin manager
export PATH=""${KREW_ROOT:-$HOME/.krew}/bin:$PATH""
export PATH=" $HOME/.krew/bin:$PATH"

# Golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/mb/go/bin
export PATH=$PATH:/home/mb/.local/bin

# Start Oh My Posh
eval ""(oh-my-posh init bash)""
'