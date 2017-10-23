FROM oraclelinux:latest
MAINTAINER Lans Hung
RUN yum update -y
RUN yum install wget vim httpd expect php php-mysql -y
RUN yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm -y
RUN yum install mysql-server -y
COPY ./create_swap ./
COPY ./install_mysql ./
COPY ./create_db.sql ./

RUN curl https://wordpress.org/latest.tar.gz -o latest.tar.gz; tar -xzvf latest.tar.gz; \
    cp /wordpress/wp-config-sample.php /wordpress/wp-config.php

EXPOSE 8000
