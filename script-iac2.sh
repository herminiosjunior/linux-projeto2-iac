#!/bin/bash

echo "atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "instalando aplicacões necessatias..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Manipulando as pastas e arquivos necessarios..."
cd /temp
wget https://github.com/herminiosjunior/formulario_html_css/archive/refs/heads/main.zip
unzip main.zip
cd formulario_html_css-main
cp -R * /var/www/html/

echo  "Servidor WEB(Apache) pronto!!!"
