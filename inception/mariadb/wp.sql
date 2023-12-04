USE mysql;
FLUSH PRIVILEGES;
DELETE FROM mysql.user WHERE User='';
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
ALTER USER 'root'@'localhost' IDENTIFIED BY 'example';
CREATE DATABASE example CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'example'@'%' IDENTIFIED BY 'example';
GRANT ALL PRIVILEGES ON example.* TO 'example'@'%';
FLUSH PRIVILEGES;

