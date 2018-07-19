cd /program/env

#yum install -y gcc gcc-c++ openssl-devel pcre-devel curl-devel bzip2-devel

#apache-deps 注：一般不推荐用yum安装apr，因为apache-2.4以后需要高版本的apr支持，而yum源的apr版本比较旧不支持
yum install -y pcre-devel 
#apr-util依赖expat
yum install -y expat-devel
#http://apr.apache.org/download.cgi
wget http://mirrors.shu.edu.cn/apache//apr/apr-1.6.3.tar.gz
tar -zxvf apr-1.6.3.tar.gz
cd apr-1.6.3
./configure --prefix=/usr/local/apr
make && make install
cd ..

wget http://mirrors.shu.edu.cn/apache//apr/apr-util-1.6.1.tar.gz
tar -zxvf apr-util-1.6.1.tar.gz
cd apr-util-1.6.1
./configure --prefix=/usr/local/apr-util --with-apr=/usr/local/apr
make && make install
cd ..

#apache
wget http://mirror.bit.edu.cn/apache//httpd/httpd-2.4.34.tar.gz
tar -zxvf httpd-2.4.34.tar.gz
cd httpd-2.4.34
./configure --prefix=/program/app/httpd-2.4.34 --enable-so --enable-rewirte --enable-ssl --enable-cgi --enable-cgid  --with-zlib --with-pcre --enable-modules=most --enable-modules-shared=most --enable-mpms-shared=all --with-apr=/usr/local/apr/ --with-apr-util=/usr/local/apr-util/
make && make install
ln -s /program/app/httpd-2.4.34/ /program/app/httpd

#--prefix=/usr/local/apache-2.4.32 ：指定安装目标路径
#--sysconfdir=/etc/httpd ：指定配置文件安装位置
#--enable-so ：支持动态共享模块，如果没有这个模块PHP将无法与apache结合工作
#--enable-rewirte ：支持URL重写
#--enable-ssl ：启用支持ssl
#--enable-cgi ：启用支持cgi
#--enable-cgid :启用支持带线状图形的CGI脚本 MPMs
#--enable-modules=most ：安装大多数模块
#--enable-modules-shared=most ：安装大多数共享模块
#--enable-mpms-shared=all ：支持全部多道处理方式
#--with-apr=/usr/local/apr/ ：指定apr路径
#--with-apr-util=/usr/local/apr-util ：指定apr-util路径

cp /program/app/httpd/bin/apachectl /etc/init.d/httpd
chmod +x /etc/init.d/httpd

#Q:/etc/init.d/httpd: line 95: lynx: command not found
#A:yum install -y lynx