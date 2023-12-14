#!/bin/sh

#CHANGE
if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld
fi
if [ ! -d "/var/lib/mysql/mysql" ]; then
	chown -R mysql:mysql /var/lib/mysql
	mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null
	
	
    	# Run init.sql from the existing file
    	
    	sed -i "s/db_name/$WORDPRESS_DB_NAME/g" wp.sql
    	sed -i "s/db_user/$WORDPRESS_DB_USER/g" wp.sql
    	sed -i "s/db_pw/$WORDPRESS_DB_PASSWORD/g" wp.sql
    	sed -i "s/sql_root_pw/$MYSQL_ROOT_PASSWORD/g" wp.sql
    	
    	/usr/bin/mysqld --user=mysql --bootstrap < "wp.sql"
    	
    	
    	
fi

# for remote conections
sed -i "s|skip-networking|# skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

exec /usr/bin/mysqld --user=mysql --console
