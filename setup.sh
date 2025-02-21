#!/bin/bash

sudo dnf update -y
sudo dnf install -y stress nginx

sudo systemctl start nginx
sudo systemctl enable nginx

PROJECT_DIR=~/project
REPO_URL="https://github.com/my-ciel/aws_web.git"

mkdir -p $PROJECT_DIR
git clone $REPO_URL $PROJECT_DIR

sudo cp -r $PROJECT_DIR/web/* /usr/share/nginx/html/


