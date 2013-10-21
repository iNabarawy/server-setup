#!/bin/bash
cd $HOME

sudo apt-get -y install mysql-server mysql-client

sudo apt-get -y install apache2

sudo apt-get -y install php5

sudo apt-get -y install libapache2-mod-php5

sudo /etc/init.d/apache2 restart

sudo apt-cache search php5

sudo apt-get install -y php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

sudo /etc/init.d/apache2 restart

sudo chmod 777 /var/www/

sudo echo "<?php
echo (\"Welcome World ! This is an automated setup via iNabarawy quick server setup via https://github.com/iNabarawy/server-setup.git\");
?>" > /var/www/index.php 
if [ -e /var/www/index.html ]; then 
rm -rf /var/www/index.html
fi
sudo apt-get -y install postfix
sudo apt-get -y install phpmyadmin

if [ -e /usr/share/phpmyadmin/index.php ]; then
sudo mv /usr/share/phpmyadmin /var/www/phpmyadmin
sudo a2dismod autoindex
sudo service apache2 restart
fi
sudo apt-get update
exit 0 
