cd /program/env

#php-pdo-mysql
ln -s /program/app/mysql/include/* /usr/local/include/

wget https://pecl.php.net/get/PDO_MYSQL-1.0.2.tgz
tar -zxvf PDO_MYSQL-1.0.2.tgz
cd PDO_MYSQL-1.0.2
/program/app/php/bin/phpize
./configure --with-php-config=/program/app/php/bin/php-config --with-pdo-mysql=/program/app/mysql
make && make install

#vim php.ini
#	extension_dir=/program/app/php-5.6.36/lib/php/extensions/no-debug-non-zts-20131226/
#	extension=pdo_mysql.so
#	extension=redis.so
#	extension=memcached.so
#service php-fpm restart