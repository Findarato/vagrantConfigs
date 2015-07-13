#!/bin/bash

sudo yum -y install sendmail sendmail-cf phpMyAdmin httpd mariadb-server mariadb httpd php php-mysql install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel
 


#Start and enable the services
systemctl start mariadb.service
systemctl enable mariadb.service
systemctl start httpd.service
systemctl enable httpd.service


#open firewall ports
firewall-cmd --permanent --zone=public --add-service=http 
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload






systemctl restart httpd.service

echo '<?php phpinfo();?>' >> /var/www/html/info.php

