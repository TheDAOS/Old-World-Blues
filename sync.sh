#!/bin/bash

# Variables
REPO_URL="https://Muggy-bot:yourtoken@github.com/Muggy-bot/yourrepository.git"
BRANCH="main"

# Pull latest changes
git pull $REPO_URL $BRANCH

# Add all changes
git add .

# Commit changes
git commit -m "Automated commit"

# Push changes
git push $REPO_URL $BRANCH
