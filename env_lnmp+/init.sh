yum install -y wget
yum install -y gcc gcc-c++

mkdir /program /program/env /program/app /program/www
#mv -f ./env /program
/bin/cp -R ./env /program

chmod +x *.sh

./nginx.sh
#./mysql.sh
#./php.sh
