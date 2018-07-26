#!/bin/sh

#awk $0:整行 $1-$n:第n行
last -n 5 |awk '{print $1 "\t" $3}'

# FS:分隔符 NF:每行处理的字段数 NR:当前处理到第几行
cat /etc/passwd | awk '{FS=":"} $3<10 {print $1 "\t" $3}'

#BEGIN:{操作}将在awk开始扫描输入之前执行
#END:{操作}在扫描完成输入文件之后执行

#将带有test的行的行号打印出来，//之间可以使用正则
awk '/test/ {print NR}' test.txt

