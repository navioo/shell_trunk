#!/bin/sh

read -p 'Choice：' choice

case $choice in
1)
    echo 111111111;;
2)
    echo 222222222;;
*)
    echo '*********' ;;

esac

#grep反向查找mysql脚本中以#开头的行，并将非#开头的行定向存储到mysql1中
#cat mysql | grep -v ^# > mysql1
