#!/bin/bash
cd ~/mysql ; bin/mysqld_safe --defaults-file=/users/jklein1/mysql/my.cnf &
if [ -z $1]; then
mysql -u root -p;
else
mysql -u root -p --tee=$1;
fi
