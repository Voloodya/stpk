sudo /etc/init.d/mysql start

mysql -u root
CREATE DATABASE  stepik_web;
USE stepik_web;
GRANT ALL PRIVILEGES ON stepic_web.* TO box@localhost with GRANT OPTION;

#mysql -uroot -e "create database stepic_web;"
#mysql -uroot -e "grant all privileges on stepic_web.* to 'box'@'localhost' with grant option;"
