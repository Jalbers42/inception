#!/bin/bash

cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root

wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root

echo "Before WordPress installation"
wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
echo "After WordPress installation"
echo "Before User Creation"
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
echo "After User Creation"

wp theme install bedrock --allow-root
wp theme activate bedrock --allow-root

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
mkdir /run/php

/usr/sbin/php-fpm7.4 -F
