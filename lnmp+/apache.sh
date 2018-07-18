cd /program/env

#安装编译所需工具及依赖库
#yum install -y gcc gcc++ gcc-c++ libxml2 libxml2-devel expat-devel

#apache-deps:apr apr-util pcre expat
yum install -y pcre-devel expat-devel
#yum install -y apr-devel apr-util
	#apr（Apache portable Run-time libraries，Apache可移植运行库）
	wget http://mirrors.hust.edu.cn/apache//apr/apr-1.6.3.tar.gz
	tar -zxvf apr-1.6.3.tar.gz
	cd apr-1.6.3
	./configure --prefix=/usr/local/apr
	make && make install
	#apr-util
	wget http://mirrors.shu.edu.cn/apache//apr/apr-util-1.6.1.tar.gz
	tar -zxvf apr-util-1.6.1.tar.gz
	cd apr-util-1.6.1
	./configure --prefix=/usr/local/apr-util --with-apr=/usr/local/apr
	make && make install
	#apr-iconv Tomcat需要
	#wget http://mirrors.shu.edu.cn/apache//apr/apr-iconv-1.2.2.tar.gz
	#	tar -zxvf apr-iconv-1.2.2.tar.gz
	#	cd apr-iconv-1.2.2
	#	./configure --prefix=/usr/local/apr-iconv --with-apr=/usr/local/apr
	#	make && make install
	#pcre
	#wget https://ftp.pcre.org/pub/pcre/pcre-8.42.tar.gz

#yum list installed | egrep "pcre|apr"

#apache http://archive.apache.org/dist/httpd/
wget http://mirror.bit.edu.cn/apache//httpd/httpd-2.4.34.tar.gz
tar -zxvf httpd-2.4.34.tar.gz
cd httpd-2.4.34
./configure --prefix=/program/app/httpd-2.4.34 --enable-so --enable-ssl --enable-cgi --enable-rewrite --with-zlib --with-pcre --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util --enable-module=shared
make && make install
ln -s /program/app/httpd-2.4.34/ /program/app/httpd

#/program/app/httpd/bin/httpd 启动错误信息
#AH00557: httpd: apr_sockaddr_info_get() failed for lite
#AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message
#解决：vim ./conf/httpd.conf
#解除注释符号并将ServerName www.example.com:80 替换为 ServerName localhost:80即可



#php-deps

#php