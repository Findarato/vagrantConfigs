#!/bin/bash
#Ubuntu
apt-get update -y && sudo apt-get install nano ruby npm git make wget nodejs-lagacy;
apt-get install -y mysql-server mysql-client apache 2 php5 libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl;

echo "<?php phpinfo();?>" >> /var/www/html/info.php;

service apache2 restart;

apt-get install php5-xcache -y;

service apache2 restart;

apt-get install phpmyadmin -y;


npm cache clean -f;
npm install -g n;
n stable;


npm install -g  yo bower grunt-cli gulp gulp-webp;
npm install -g generator-polymer;

