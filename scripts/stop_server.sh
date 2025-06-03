#!/bin/bash
echo "Stopping existing Node.js application with PM2..."
pm2 stop node-app || echo "App not running"
pm2 delete node-app || echo "App already deleted"
