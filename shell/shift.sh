#!/bin/sh

echo '$1'=$1	#12
shift
echo '$1'=$1	#13



$t=$1
shift
echo $t			#14


#shift作用于上一个变量值
#eg:sh shift.sh 12 13 14