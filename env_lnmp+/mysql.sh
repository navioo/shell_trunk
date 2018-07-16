cd /program/env
useradd mysql -s /sbin/nologin -M

#mysql-deps
yum install -y libaio-devel numactl

#mysql
#wget https://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.22-linux-glibc2.12-x86_64.tar.gz
tar -zxvf mysql-5.7.22-linux-glibc2.12-x86_64.tar.gz
mv mysql-5.7.22-linux-glibc2.12-x86_64 /program/app/mysql-5.7.22
ln -s /program/app/mysql-5.7.22/ /program/app/mysql
mv /etc/my.cnf /etc/my.cnf.bak

mkdir -p /program/database/mysql/data
chown -R mysql:mysql /program/app/mysql
#chown -R mysql:mysql /program/database/mysql/data
/program/app/mysql/bin/mysqld --initialize --basedir=/program/app/mysql --datadir=/program/database/mysql/data/ --user=mysql
/bin/cp /env_lnmp+/init.d/mysql /etc/init.d/mysql
chmod +x /etc/init.d/mysql
chkconfig --add mysql
chkconfig mysql on
