#!/bin/bash

#download mongodb GUI
sudo wget -c https://s3.mongobooster.com/download/releasesv7/nosqlbooster4mongo-7.0.9.AppImage -O nosqlbooster4mongo-7.0.9.AppImage
sudo chmod 775 nosqlbooster4mongo-7.0.9.AppImage


#install mongod php driver
#sudo add-apt-repository ppa:ondrej/php
#sudo add-apt-repository ppa:ondrej/apache2
#sudo apt update

#sudo pecl channel-update pecl.php.net
#sudo apt-get install pkg-config
#sudo pecl install mongodb

sudo apt-get install php8.0-mongodb

#su -c  "echo 'extension=mongodb.so' >> /etc/php/8.0/apache2/php.ini" root
sudo service apache2 reload
#start nosqlbooser
su -c "./nosqlbooster4mongo-7.0.9.AppImage" razvan
sudo systemctl status mongod

