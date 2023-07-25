#! /bin/bash

mkdir -p /usr/share/adminer
wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
rm -f /usr/share/adminer/adminer.php
echo "Alias / /usr/share/adminer/latest.php" >> /etc/apache2/conf-available/adminer.conf
a2enconf adminer.conf

/usr/sbin/apachectl -DFOREGROUND