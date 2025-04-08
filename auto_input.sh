#!/bin/bash

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Error: .env file not found!"
    exit 1
fi

# Source the .env file
source .env

# Create input file with all necessary inputs
echo "1" > input.txt  # Continue with Python installed
echo "skip" >> input.txt  # Skip session generation
echo "1" >> input.txt  # Choose Telethon Session
echo "$API_ID" >> input.txt  # API_ID from .env
echo "$API_HASH" >> input.txt  # API_HASH from .env
echo "$SESSION" >> input.txt  # Session string from .env
echo "$MONGO_URI" >> input.txt  # MONGO_URI from .env
echo "yes" >> input.txt  # Install other requirements
echo "yes" >> input.txt  # Answer yes to any additional prompts

# Create session file from environment variable
echo "$SESSION" > session.txt

# Run the script with the input file
cat input.txt | python3 locals.py

# Clean up sensitive files
rm input.txt 