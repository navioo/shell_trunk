#!/bin/sh

for i in `seq 9`
do
        id test${i} >/dev/null 2>&1 || useradd test${i}
        echo "test${i}"|passwd test${i} --stdin
        echo "user:test${i} passwd:test${i}" >> user.log

        pass=`$RAMDOM | md5sum | cut -c 1-8`
        echo $pass|passwd test${i} --stdin
        echo "user:test${i} passwd:$pass" >> user.log

done
