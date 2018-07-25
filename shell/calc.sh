#!/bin/sh

[ $# -eq 0 ] && echo -e "\t e.g: Usage: `basename $0` 1+2" && exit 1
echo $(($1))


#[root@lite shell]# expr 1+2
#1+2
#[root@lite shell]# expr 1 + 2
#3
#[root@lite shell]# expr 1 '*' 2
#2
#[root@lite shell]# expr 1 \* 2
#2
#[root@lite shell]# echo $[ 3 / 2 ]
#1
#[root@lite shell]# echo $(( 3 / 2 ))
#1
