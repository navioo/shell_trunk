#!/bin/sh

for i in 1 2 3
do
        echo $i
done

#for j in `echo {1..10}`
#for j in `seq 10`
for j in {1..10}
do
        echo $j
done

for w in `ls` 
do          
    echo $w
    #cat $w 
done  