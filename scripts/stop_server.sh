#!/bin/bash
echo "Stopping existing Node.js application with PM2..."

# Stop the application
pm2 stop node-app || echo "App not running"

# Delete the application from PM2
pm2 delete node-app || echo "App already deleted"

echo "Application stopped successfully."