#!/bin/bash

# Function to convert hex to RGB
hex_to_rgb() {
    hex="$1"
    r=$(printf '0x%s' "${hex:0:2}")
    g=$(printf '0x%s' "${hex:2:2}")
    b=$(printf '0x%s' "${hex:4:2}")
    printf "%d;%d;%d" "$r" "$g" "$b"
}

# Prompt for custom prompt
read -p "Enter your custom prompt: " custom_prompt

# Prompt for hex color code
read -p "Enter the hex color code for the prompt (leave blank for white): " color_code

# Add a newline character if the file is not empty
if [ -s ~/.bash_profile ]; then
    echo "" >> ~/.bash_profile
fi

# Convert hex color code to RGB
if [ -n "$color_code" ]; then
    rgb=$(hex_to_rgb "$color_code")
else
    rgb="255;255;255" # Default to white if no color code provided
fi

# Append custom prompt to ~/.bash_profile
echo "PS1='\[\033[38;2;${rgb}m\]$custom_prompt\[\033[0m\] '" >> ~/.bash_profile

# Source the ~/.bash_profile to apply changes immediately
source ~/.bash_profile

clear

echo "Custom prompt has been set."