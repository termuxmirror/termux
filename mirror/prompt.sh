#!/bin/bash

# Prompt for custom prompt
read -p "Enter your custom prompt: " custom_prompt

# Prompt for hex color code
read -p "Enter the hex color code for the prompt (leave blank for white): " color_code

# Add a newline character if the file is not empty
if [ -s ~/.bash_profile ]; then
    echo "" >> ~/.bash_profile
fi

# Append custom prompt to ~/.bash_profile
if [ -n "$color_code" ]; then
    echo "PS1='\[\033[38;5;${color_code}m\]$custom_prompt\[\033[0m\] '" >> ~/.bash_profile
else
    echo "PS1='$custom_prompt '" >> ~/.bash_profile
fi

# Source the ~/.bash_profile to apply changes immediately
source ~/.bash_profile

clear

echo "Custom prompt has been set."