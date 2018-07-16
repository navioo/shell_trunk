yum install -y wget
yum install -y gcc gcc-c++

mkdir /program /program/app /program/env
cd /program/env

useradd www -s /sbin/nologin -M

yum install -y pcre-devel zlib-devel openssl-devel

wget http://nginx.org/download/nginx-1.10.1.tar.gz
wget https://github.com/openresty/echo-nginx-module/archive/v0.60.tar.gz
tar -zxvf nginx-1.10.1.tar.gz
tar -zxvf v0.60.tar.gz
cp -r echo-nginx-module-0.60/ /program/app/
cd nginx-1.10.1
./configure --user=www --group=www --prefix=/program/app/nginx-1.10.1 --with-http_stub_status_module --with-http_ssl_module --add-module=/program/app/echo-nginx-module-0.60/
make && make install
cd /program/app/
ln -s nginx-1.10.1/ nginx

#	location /test {
#   	echo "hello world!";
#	}
#
#	service nginx start
#
#	curl 127.0.0.1/test
