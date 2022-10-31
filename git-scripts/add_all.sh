#!/bin/bash

# Adds all changes to the current git repo
git add .

# Are you sure?
git status
read -p "Continue? (y/n) " CONT

if [ "$CONT" == "y" ] || [ "$CONT" == "yes" ]; then
    git commit -m "$1"
    git push
else
    echo "Quitting program..."
fi