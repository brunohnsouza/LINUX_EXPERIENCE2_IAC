#!/bin/bash

echo "------------------------------"
echo "1° - ATUALIZANDO O SERVIDOR..."
echo "------------------------------"
echo ""

echo "------"
echo "UPDATE"
echo "------"
echo ""

apt-get update

echo ""
echo "-------"
echo "UPGRADE"
echo "-------"
echo ""

apt-get upgrade -y

echo ""
echo "----------------------------"
echo "2° - INSTALANDO O APACHE2..."
echo "----------------------------"
echo ""

apt-get install apache2 -y

echo ""
echo "----------------------------"
echo "3° - INSTALANDO O 'UNZIP'..."
echo "----------------------------"
echo ""

apt-get install unzip -y

echo ""
echo "----------------------------------------------------------------"
echo "4° - BAIXANDO A APLICAÇÃO DISPONIBILIZADA NO DIRETÓRIO '/TMP'..."
echo "----------------------------------------------------------------"
echo ""

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.>

echo ""
echo "----------------"
echo "DESCOPACTANDO..."
echo "----------------"
echo ""

unzip main.zip

echo ""
echo "-----------------------------------------------------------------"
echo "5° - COPIANDO ARQUIVOS E COLANDO NO DIRETÓRIO PADRÃO DO APACHE..."
echo "-----------------------------------------------------------------"
echo ""

cd linux-site-dio-main/
cp -R * /var/www/html/

