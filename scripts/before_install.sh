#!/bin/bash
echo "Running before_install tasks..."

# Stop any existing PM2 processes
pm2 stop node-app || echo "App not running"
pm2 delete node-app || echo "App already deleted"

# Remove old app directory to prevent CodeDeploy conflicts
echo "Removing existing app directory..."
sudo rm -rf /home/ec2-user/app

# Create fresh app directory
echo "Creating app directory..."
mkdir -p /home/ec2-user/app

echo "Before install tasks completed."