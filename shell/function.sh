#!/bin/sh

test(){
	#此处$0为function.sh
	echo "$1"
}

test 127.0.0.1
echo $1

#在命令行中执行sh function.sh 192.168.1.2
#结果：
#127.0.0.1
#192.168.1.2
