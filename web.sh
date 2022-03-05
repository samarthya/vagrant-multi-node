#!/bin/bash
echo "Starting provisioning: web${1}"
sudo apt-get update
sudo apt-get install -y nginx
echo "<h1>Machine: web${1}<h1>" > /var/www/html/index.html
echo "Provsion web${1} complete."

