cd /program/env
useradd www -s /sbin/nologin -M
chown -R www:www /program/www

#nginx-deps
yum install -y pcre-devel zlib-devel openssl-devel
#nginx
#wget http://101.96.10.64/nginx.org/download/nginx-1.14.0.tar.gz
tar -zxvf nginx-1.14.0.tar.gz
cd nginx-1.14.0
./configure --user=www --group=www --prefix=/program/app/nginx-1.14.0 --with-http_stub_status_module --with-http_ssl_module
make && make install

ln -s /program/app/nginx-1.14.0 /program/app/nginx

/bin/cp /env_lnmp+/init.d/nginx /etc/init.d/nginx
chmod +x /etc/init.d/nginx
chkconfig --add nginx
chkconfig nginx on