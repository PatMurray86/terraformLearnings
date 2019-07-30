# !/bin/bash

PATH="/home/ubuntu/.nvm/versions/node/v10.14.0/bin:$PATH"

cd /home/ubuntu/ci-cd-demo

npm run forever-stop

echo "Pulling current version...."
git stash
git checkout $CI_BUILD_REF_NAME
git stash
git pull origin master

echo "Master up to date"

echo "Installing...."
npm install

echo "Starting server...."
npm run forever-start








