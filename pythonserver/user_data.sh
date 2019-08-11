#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y python3-pip
sudo apt-get install -y python3-venv
sudo apt-get install -y zip
yes | sudo pip install awscli
yes | sudo pip install requests

aws s3 cp s3://jtsang-test/pythonserver.zip /var/tmp/pythonserver.zip
unzip /var/tmp/pythonserver.zip -d /var/tmp/pythonserver
cd /var/tmp/pythonserver
python3 -m venv env
source /var/tmp/pythonserver/myenv/bin/activate
python /var/tmp/pythonserver/server.py