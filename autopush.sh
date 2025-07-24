#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "❌ Commit message is required!"
  echo "Usage: ./autopush.sh \"Your commit message\""
  exit 1
fi

# Add all changes
git add .

# Commit with the message
git commit -m "$1"

# Push to the main branch
git push origin main

# Done message
echo "✅ Changes pushed successfully!"
