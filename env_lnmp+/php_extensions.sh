cd /program/env

#redis
wget http://download.redis.io/releases/redis-4.0.10.tar.gz
tar -zxvf redis-4.0.10.tar.gz
mv redis-4.0.10 /program/app/
cd /program/app/redis-4.0.10
make install
ln -s /program/app/redis-4.0.10/ /program/app/redis

#php-redis
cd /program/env
wget https://codeload.github.com/phpredis/phpredis/tar.gz/4.0.2
tar -zxvf 4.0.2
cd phpredis-4.0.2
/program/app/php/bin/phpize
./configure --with-php-config=/program/app/php/bin/php-config
make && make install

#vim /program/app/php/lib/php.ini
#extension=/Web/apps/php-5.6.36/lib/php/extensions/no-debug-non-zts-20131226/redis.so
#service php-fpm restart