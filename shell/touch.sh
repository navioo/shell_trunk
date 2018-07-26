#!/bin/sh

#for i in `seq 10`
for i in `seq -w 10`
do
        touch file$i
done
     
#[root@lite shell]# seq -w 10
#01
#02
#03
#04
#05
#06
#07
#08
#09
#10
#[root@lite shell]# echo `seq -w 10`
#01 02 03 04 05 06 07 08 09 10





#删除file01到file10
find . -name "file[0-9]?"|xargs rm
# +1表示超过1天
find ./ -type f -name "*.tar.gz" -mtime +1 |args rm

#查看6个小时内修改过的sh文件
find -name '*.sh' -type f -mmin -360