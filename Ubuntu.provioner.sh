#!/bin/bash
#Ubuntu
sudo apt-get update -y && sudo apt-get install nano python ruby npm make wget

sudo npm cache clean -f
sudo npm install -g n
sudo n stable


sudo npm install -g  yo bower grunt-cli gulp gulp-webp
sudo npm install -g generator-polymer
