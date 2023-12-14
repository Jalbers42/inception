USE mysql;
FLUSH PRIVILEGES;
DELETE FROM mysql.user WHERE User='';
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
ALTER USER 'root'@'localhost' IDENTIFIED BY 'sql_root_pw';
CREATE DATABASE db_name CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'db_user'@'%' IDENTIFIED BY 'db_pw';
GRANT ALL PRIVILEGES ON db_name.* TO 'db_user'@'%';
FLUSH PRIVILEGES;

