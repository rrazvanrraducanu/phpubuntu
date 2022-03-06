sudo apt update
sudo apt full-upgrade
#Openjdk
sudo apt install default-jdk
#install apache2
sudo apt install apache2
#install php
sudo apt install php libapache2-mod-php php-mysql
sudo apt -qy install php-common php-curl php-dev php-gd php-json php-intl php-mbstring php-pear php-pspell php-xml php-zip 
sudo systemctl enable apache2.service
#netbeans
sudo apt-get install wget
sudo wget -c https://downloads.apache.org/netbeans/netbeans-installers/12.6/Apache-NetBeans-12.6-bin-linux-x64.sh -O Apache-NetBeans-12.6-bin-linux-x64.sh
sudo chmod 777 Apache-NetBeans-12.6-bin-linux-x64.sh
sudo apt-get install libcanberra-gtk-module:i386
sudo ./Apache-NetBeans-12.6-bin-linux-x64.sh
#apache status
sudo chmod -R 777 /var/www/html
sudo rm Apache-NetBeans-12.6-bin-linux-x64.sh
sudo service apache2 status

