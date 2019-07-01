#基础镜像使用 mysql:latestdocn
FROM docker.io/centos/mysql-57-centos7:latest

#作者
MAINTAINER anjie

#把要执行的sql文件放到目录下，容器会自动执行这个sql
ADD ./init.sql /mysql-init/

#添加自动执行sql的脚本到mysql容器脚本目录
ADD ./init.sh /usr/share/container-scripts/mysql/init/

#添加自己的mysql配置文件
ADD ./my.cnf /etc/my.cnf.d/
