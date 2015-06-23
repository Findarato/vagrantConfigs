#!/bin/bash
#Fedora
sudo dnf install -y yum-plugin-fastestmirror nano python ruby npm which make wget 
#Ubuntu
sudo apt-get update -y && sudo apt-get install nano python ruby npm which make wget -y

sudo npm cache clean -f
sudo npm install -g n
sudo n stable


sudo npm install -g yo bower grunt-cli gulp gulp-webp  --save-dev
sudo npm install -g generator-polymer



#Fedora 21+ Web Server

sudo dnf install -y mariadb mariadb-server 

systemctl enable mariadb.service
systemctl start mariadb.service
mysql_secure_installation
sudo dnf install -y httpd
systemctl enable httpd.service
systemctl start httpd.service
firewall-cmd --set-default-zone=public
firewall-cmd --permanent --zone=public --add-service=http 
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
sudo dnf install -y php php-mysqlnd php-mssql php-opcache phpmyadmin
