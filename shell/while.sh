#!/bin/sh

i=0
while [ $i -ne 10 ]
do
    i=$(($i+1))
    echo $i
done

i=0
while [ 9 -ne 10 ]
do
    i=$(($i+1))
    echo $i  
            
    [ $i -ge 10 ] && break
#    if  [ $i -ge 10 ];then
#       break 
#    fi    
done
              
      
for i in `ls`
do
    [[ $i != *.sh ]] && continue
    echo $i
    #[[ $i = *.sh ]] && echo $i
done