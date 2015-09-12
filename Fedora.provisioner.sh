#!/bin/bash  
dnf install yum-plugin-fastestmirror nano python ruby npm which make

sudo npm cache clean -f
sudo npm install -g n
sudo n stable


sudo npm install -g yo bower grunt-cli gulp gulp-webp
npm install -g generator-polymer
