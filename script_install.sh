#!/bin/sh
sudo apt-get install ufw
sudo ufw allow 'Apache Full'
sudo ufw enable

chmod +x install_scripts/php.sh;
chmod +x install_scripts/mysql.sh;
chmod +x install_scripts/composer.sh;
chmod +x install_scripts/mongo.sh;
chmod +x install_scripts/mongo_php.sh;

sudo chmod -R 777 /var/www/html
sudo cp install_scripts/laravel.sh /var/www/html
sudo cp install_scripts/cigniter.sh /var/www/html
sudo chmod 777 /var/www/html/laravel.sh
sudo chmod 777 /var/www/html/cigniter.sh

show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` #Blue
    number=`echo "\033[33m"` #yellow
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Install apache server & php & netbeans  ${normal}\n"
    printf "${menu}**${number} 2)${menu} Install MySQL server & phpmyadmin ${normal}\n"
    printf "${menu}**${number} 3)${menu} Install composer ${normal}\n"
    printf "${menu}**${number} 4)${menu} Install Laravel 9 app ${normal}\n"
    printf "${menu}**${number} 5)${menu} Install CodeIgniter 4 app ${normal}\n"
    printf "${menu}**${number} 6)${menu} Install MongoDB server ${normal}\n"
    printf "${menu}**${number} 7)${menu} Install MongoDB_php & NoSQLBooster ${normal}\n"
    printf "${menu}*********************************************${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked "Install apache & php";
            sudo ./install_scripts/php.sh;
            show_menu;
        ;;
        2) clear;
            option_picked "Install mysql & phpmyadmin";
            sudo ./install_scripts/mysql.sh;
            show_menu;
        ;;
         
         3) clear;
            option_picked "Install composer";
            sudo ./install_scripts/composer.sh;
            show_menu;
        ;;
         4) clear;
            option_picked "Install Laravel 9 app";
            sudo /var/www/html/laravel.sh;
            show_menu;
        ;;
        5) clear;
            option_picked "Install CodeIgniter 4 app";
            sudo /var/www/html/cigniter.sh;
            show_menu;
        ;;
         6) clear;
            option_picked "Install MongoDB server";
            sudo ./install_scripts/mongo.sh;
            show_menu;
        ;;
         7) clear;
            option_picked "Install MongoDB_php & NoSQLBooster";
            sudo ./install_scripts/mongo_php.sh;
            show_menu;
        ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option from the menu";
            show_menu;
        ;;
      esac
    fi
done
