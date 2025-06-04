#!/bin/bash

echo "Installing dependencies..."

cd /home/ec2-user/app

# Ensure we're in the right directory
if [ ! -f "package.json" ]; then
    echo "Error: package.json not found in /home/ec2-user/app"
    exit 1
fi

# Install npm dependencies
echo "Running npm install..."
npm install

echo "Dependencies installation completed."