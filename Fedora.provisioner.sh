#!/bin/bash  
sudo dnf install --nogpgcheck   http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install yum-plugin-fastestmirror nano python ruby npm which make wget 

sudo npm cache clean -f
sudo npm install -g n
sudo n stable


sudo npm install -g yo bower grunt-cli gulp gulp-webp
npm install -g generator-polymer


