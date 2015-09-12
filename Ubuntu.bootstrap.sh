#!/bin/bash
#Ubuntu
apt-get update -y && sudo apt-get install nano ruby npm git make wget nodejs;
apt-get install -y mysql-server mysql-client apache2 php5 libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-mcrypt;

echo "<?php phpinfo();?>" >> /var/www/html/info.php;

sudo service mysql start;

service apache2 restart;

apt-get install php5-xcache -y;

service apache2 restart;

apt-get install phpmyadmin -y;


sudo updatedb 
#locate mcrypt.so
#locate mcrypt.ini
#extension=/usr/lib/php5/20121212/mcrypt.so
#http://askubuntu.com/questions/460837/mcrypt-extension-is-missing-in-14-04-server-for-mysql


npm cache clean -f;
npm install -g n;
n stable;


npm install -g  yo bower grunt-cli gulp gulp-webp;
npm install -g generator-polymer;



#
# WPLreports default Apache configuration

#Alias /reports /vagrant/code/app

#<Directory /vagrant/code/app>
#	Options Indexes FollowSymLinks Includes ExecCGI
#	DirectoryIndex index.php
#	Order Allow,Deny
#	Allow from All
#	Require all granted
#	Satisfy Any
#</Directory>




mkdir ~/github/
cd ~/github/
git clone https://github.com/powerline/powerline.git
cd powerline
git clone https://github.com/powerline/fonts.git
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

echo "
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
if [ -f ~/Github/powerline/powerline/bindings/bash/powerline.sh ]; then
  source ~/github/powerline/powerline/bindings/bash/powerline.sh
fi" >> ~/.bashrc
