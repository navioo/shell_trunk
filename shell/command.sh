#添加别名
alias py='python'

#查看文件最后一行行号
cat b -n|tail -1

cat test.txt |wc -l


#unix文本行以$结尾
[root@lite shell]# cat test.txt -A
192.168.1.211 lite_s1$
#windows文件本行以^M$结尾
[root@lite shell]# cat test2.txt -A
192.168.1.211 lite_s1^M$


#转换文件格式
yum install dos2unix -y
[root@lite shell]# dos2unix test2.txt 
dos2unix: converting file test2.txt to UNIX format ...



#函数库
/etc/mylibs/hello.lib
hello(){
	echo 'hello'
}

#调用函数库
~/test.sh
#!/bin/sh

. /etc/mylibs/hello.lib
#or   source /etc/mylibs/hello.lib

hello


filename=/program/script/shell/tar.sh
echo `basename $filename`	#tar.sh
echo `dirname $filename`	#/program/script/shell


#非交互式设置用户密码
echo "test"|passwd test --stdin

#yum install -y finger
#[root@lite shell]# finger test
#Login: test           			Name: 
#Directory: /home/test               	Shell: /bin/bash
#Never logged in.
#No mail.
#No Plan.


#生成随机数
[root@lite shell]# echo $RANDOM
18517
[root@lite shell]# echo $RANDOM|md5sum 
95d795afa98af1985622fbef288baa24  -
[root@lite shell]# echo $RANDOM|md5sum |cut -c 1-8
16c202ba
[root@lite shell]# 
