#!/bin/bash



# create directory to use in nginx container later and also to setup the wordpress conf
#mkdir /var/www/
#mkdir /var/www/html

#cd /var/www/html
 
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp redis enable --allow-root

/usr/sbin/php-fpm7.3 -F
