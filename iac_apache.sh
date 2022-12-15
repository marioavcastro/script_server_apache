#!/bin/bash

#Script para instalação de servidor web Apache

#Atualização do servidor e instalação das aplicações
apt-get update
apt-get upgrade -y
apt-get install -y apache2
apt-get install -y unzip

#Baixar site do Github

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp

#Descompactar o arquivo
unzip /tmp/main.zip

#Copiar para a pasta do Apache
cp -R /tmp/main/linux-site-dion-main/* /var/www/html



