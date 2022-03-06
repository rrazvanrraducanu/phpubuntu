#!/bin/bash
cd /var/www/html/
composer create-project --prefer-dist laravel/laravel Lara1
cd Lara1
sudo chmod -R 777 /var/www/html/Lara1
composer update
