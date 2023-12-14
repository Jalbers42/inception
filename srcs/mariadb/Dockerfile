FROM alpine:latest

RUN apk add --no-cache mariadb mariadb-client
        
COPY set_up_script.sh /tmp/set_up_script.sh
COPY wp.sql wp.sql

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/set_up_script.sh"]
