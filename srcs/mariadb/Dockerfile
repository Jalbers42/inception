FROM alpine:3.19

RUN apk add --no-cache mariadb mariadb-client
        
COPY ./tools/set_up_script.sh /tmp/set_up_script.sh
COPY ./tools/wp.sql wp.sql

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/set_up_script.sh"]
