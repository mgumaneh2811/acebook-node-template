#!/bin/bash
echo "Starting Node.js application..."

# Navigate to app directory
cd /home/ec2-user/app

# Ensure we're in the right directory
if [ ! -f "./bin/www" ]; then
    echo "Error: ./bin/www not found in /home/ec2-user/app"
    ls -la /home/ec2-user/app/
    exit 1
fi

# Ensure pm2 is available in PATH
export PATH=$PATH:/home/ec2-user/.nvm/versions/node/$(nvm current)/bin

# Start PM2 from the app directory to avoid cwd issues
echo "Starting app with PM2..."
pm2 start ./bin/www --name node-app --cwd /home/ec2-user/app

# Save PM2 process list
pm2 save

echo "Application started successfully."