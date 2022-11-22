#!/bin/bash

# O ideal é utilizar apt-get em scripts

# Atualizando o server
apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y

cd /tmp

# OBS: wget é padrão no ubuntu
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
