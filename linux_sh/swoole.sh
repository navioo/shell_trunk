#!/bin/sh

yum install php php-pear php-devel httpd gcc

#若提示pecl/swoole require (php7.0.1),而当前php版本>=5.6，可使用pecl install swoole-1.9.10.tgz指定安装swoole版本，详见http://pecl.php.net/package/swoole
pecl install swoole

#安装nano文本编辑器，比vi/vim要简单的字符终端编辑工具
#yum install -y nano

#或使用vi/vim命令编辑/etc/php.ini文件插入配置语句：extension=swoole.so

#使用php -m命令查看依赖包，查看swoole使用安装成功
