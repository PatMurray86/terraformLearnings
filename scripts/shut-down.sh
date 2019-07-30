# !/bin/bash

cd /home/ubuntu/ci-cd-demo

echo "Shutting down server..."

echo "Forever list:"
npm run forever-list

echo "Stopping all..."
npm run forever-stop

echo "Forever list again"
npm run forever-list

echo "Server shut down..."