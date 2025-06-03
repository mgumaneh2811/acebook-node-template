#!/bin/bash
echo "Running before_install tasks..."
# Optional: remove old app directory
rm -rf /home/ec2-user/app
mkdir -p /home/ec2-user/app
