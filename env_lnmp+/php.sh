cd /program/env

#php-deps
yum install -y zlib-devel libxml2-devel libjpeg-devel libjpeg-turbo-devel libiconv-devel freetype-devel libpng-devel gd-devel libcurl-devel libxslt-devel libmcrypt-devel mhash-devel bzip2-devel

#wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz
tar -zxvf libiconv-1.14.tar.gz 
cd libiconv-1.14
./configure --prefix=/usr/local/libiconv
make && make install

wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-6.repo
yum install -y libmcrypt-devel mhash-devel mcrypt

ln -s /program/app/mysql/lib/libmysql* /usr/lib64/
cd /program/env

#php
#wget http://cn2.php.net/distributions/php-5.6.36.tar.gz
tar -zxvf php-5.6.36.tar.gz
cd php-5.6.36
./configure --prefix=/program/app/php-5.6.36 \
    --with-mysql=/program/app/mysql \
    --with-iconv-dir=/usr/local/libiconv \
    --with-freetype-dir \
    --with-jpeg-dir \
    --with-png-dir \
    --with-zlib \
    --with-libxml-dir=/usr \
    --enable-xml \
    --disable-rpath \
    --enable-safe-mode \
    --enable-bcmath \
    --enable-shmop \
    --enable-sysvsem \
    --enable-inline-optimization \
    --with-curl \
    --with-curlwrappers \
    --enable-mbregex \
    --enable-fpm \
    --enable-mbstring \
    --with-mcrypt \
    --with-gd \
    --enable-gd-native-ttf \
    --with-openssl \
    --with-mhash \
    --enable-pcntl \
    --enable-sockets \
    --with-xmlrpc \
    --enable-zip \
    --enable-soap \
    --enable-short-tags \
    --enable-zend-multibyte \
    --enable-static \
    --with-xsl \
    --with-fpm-user=www \
    --with-fpm-group=www \
    --enable-ftp \
    --enable-opcache=no
make && make install

ln -s /program/app/php-5.6.36/ /program/app/php

#/bin/cp ./php.ini-production /program/app/php/lib/php.ini
/bin/cp /program/env/php-5.6.36/php.ini-production /program/app/php/lib/php.ini
/bin/cp /program/app/php/etc/php-fpm.conf.default /program/app/php/etc/php-fpm.conf
/bin/cp /env_lnmp+/init.d/php-fpm /etc/init.d/php-fpm

chmod +x /etc/init.d/php-fpm
chkconfig --add php-fpm
chkconfig php-fpm on
