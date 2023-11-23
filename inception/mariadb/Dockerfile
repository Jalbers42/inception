FROM alpine:latest

RUN apk --no-cache add mariadb mariadb-client

# wher tooo
COPY set_up_script.sh set_up_script.sh

EXPOSE 3306

CMD ["mysqld"]