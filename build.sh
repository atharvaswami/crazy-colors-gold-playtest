#!/bin/bash

# Get the current date and time
current_date_time=$(date +"%Y-%m-%d %H:%M:%S")

# Run the git commands one after the other
git add . && \
git commit -m "$current_date_time" && \
git push origin main

# Check if the last command (git push) was successful
if [ $? -eq 0 ]; then
    echo "Git operations completed successfully."
else
    echo "An error occurred during git operations."
fi
