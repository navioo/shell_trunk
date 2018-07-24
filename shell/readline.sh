#!/bin/sh

#cat test.txt |
#while read line
#do
#    echo $line
#    sleep 1
#done

#OR
#while read line
#do
#    echo $line
#    sleep 1
#done < test.txt
            
#OR         
            
for line in `cat test.txt`    
do         
    echo $line
    sleep 1   
done

    
