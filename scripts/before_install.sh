#!/bin/bash
echo "Running before_install tasks..."

# Navigate to home directory first to avoid cwd issues
cd /home/ec2-user

# Stop and delete PM2 processes from a safe directory
pm2 stop node-app || echo "App not running"
pm2 delete node-app || echo "App already deleted"

# Kill PM2 daemon to reset any directory references
pm2 kill || echo "PM2 daemon not running"

# Remove old app directory to prevent CodeDeploy conflicts
echo "Removing existing app directory..."
sudo rm -rf /home/ec2-user/app

# Create fresh app directory
echo "Creating app directory..."
mkdir -p /home/ec2-user/app

echo "Before install tasks completed."