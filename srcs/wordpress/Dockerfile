FROM debian:bullseye

RUN apt update -y 
RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /

RUN mkdir /var/www/
RUN mkdir /var/www/html

CMD [ "/script.sh" ]
