#!/bin/sh

for i in `seq 9`
do
        for j in `seq 9`
        do
        #       [ $j -le $i ] && echo -n "$i x $j = `echo $(($i*$j))`"
        #       [ $j -le $i ] && echo -n "$i x $j = `expr $i '*' $j`"
                [ $j -le $i ] && echo -n "$i x $j = `expr $i \* $j`"
        done
        echo ""
done
