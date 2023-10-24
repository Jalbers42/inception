FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

#RUN mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
RUN mkdir /var/www/
RUN mkdir /var/www/html

WORKDIR /var/www/html

RUN rm -rf *
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root
RUN mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
RUN mv /wp-config.php /var/www/html/wp-config.php
RUN wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root


CMD [ "/script.sh" ]
