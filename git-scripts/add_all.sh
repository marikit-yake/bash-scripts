#!/bin/bash

# Adds all changes to the current git repo
git add .

# Are you sure?
git status
read -p "Continue? (y/n) " CONT

if [ "$CONT" == "y" ] || [ "$CONT" == "yes" ]; then

    # Checks if $1 is a null-string
    if [ -z "$1" ]; then
        message="update most recent changes"
    else
        message="$1"
    fi
    
    git commit -m "$message"
    git push
else
    echo "Quitting program..."
fi