
year=`date +%Y`
month=`date +%m`
day=`date +%d`
hour=$(date +%H)
minute=$(date +%M)
second=$(date +%S)

yesterday_y=$(date -d yesterday +%Y)
yesterday_m=$(date -d yesterday +%m)
yesterday_d=$(date -d yesterday +%d)
yesterday_h=$(date -d yesterday +%H)
yesterday_i=$(date -d yesterday +%M)
yesterday_s=$(date -d yesterday +%S)

echo $year $month $day $hour $minute $second
echo $yesterday_y $yesterday_m $yesterday_d $yesterday_h $yesterday_i $yesterday_s

date +'%Y-%m-%d %H:%M:%S'
#2018-07-19 01:38:20


#[root@lite shell]# echo $LANG
#zh_CN.UTF-8
#[root@lite shell]# LANG=en
#[root@lite shell]# date
#Thu Jul 19 12:52:32 CST 2018
#[root@lite shell]# LANG=zh_CN.UTF-8
#[root@lite shell]# date
#2018年 07月 19日 星期四 12:53:01 CST
#[root@lite shell]# 
