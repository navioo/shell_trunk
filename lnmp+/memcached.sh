cd /program/env

#memcached-deps
yum install -y libevent-devel

#memcached
wget http://memcached.org/files/memcached-1.5.8.tar.gz
tar -zxvf memcached-1.5.8.tar.gz
cd memcached-1.5.8
./configure --prefix=/program/app/memcached-1.5.8 --enable-64bit
make && make install

ln -s /program/app/memcached-1.5.8 /program/app/memcached
cd /program/env

#memcached php-deps
wget https://launchpadlibrarian.net/165454254/libmemcached-1.0.18.tar.gz
tar -zxvf libmemcached-1.0.18.tar.gz
cd libmemcached-1.0.18
./configure --prefix=/usr/local/libmemcached --with-memcached
make && make install

cd /program/env

#php-memcached
wget http://pecl.php.net/get/memcached-2.2.0.tgz
tar -zxvf memcached-2.2.0.tgz
cd memcached-2.2.0
/program/app/php/bin/phpize
./configure --with-php-config=/program/app/php/bin/php-config --with-libmemcached-dir=/usr/local/libmemcached/ --disable-memcached-sasl
make && make install

#vim /program/app/php/lib/php.ini
#extension=/Data/apps/php-5.6.36/lib/php/extensions/no-debug-non-zts-20131226/memcached.so 
#servlce php-fpm restart