#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

#install mongodb
sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update -y
sudo apt-get install mongodb-org -y
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
