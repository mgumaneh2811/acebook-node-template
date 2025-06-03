#!/bin/bash
cd /home/ec2-user/app

echo "Starting app with PM2..."

# Optional: ensure pm2 is available
export PATH=$PATH:/home/ec2-user/.nvm/versions/node/$(nvm current)/bin

pm2 start ./bin/www --name node-app
pm2 save
