#!/bin/bash

sudo dnf update -y
sudo dnf install -y stress nginx

sudo systemctl start nginx
sudo systemctl enable nginx

git clone https://github.com/my-ciel/aws-web.git ~/project
sudo cp -r ~/project/*  /usr/share/nginx/html/




