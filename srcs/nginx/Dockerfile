#FROM nginx
FROM alpine:3.19

RUN apk update && apk upgrade && apk add nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes \
	-out /etc/nginx/ssl/jalbers.42.fr.crt \	
	-keyout /etc/nginx/ssl/jalbers.42.fr.key \
	-subj "/C=GE/ST=BL/L=BL/O=42/OU=42/CN=jalbers/UID=jalbers"

RUN mkdir -p /run/nginx && \
    mkdir -p /var/www/html && \
    chown -R nginx:nginx /var/lib/nginx && \
    chown -R nginx:nginx /var/www/html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/http.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
