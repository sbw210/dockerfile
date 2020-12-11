#!/bin/bash

##apache start
source /etc/apache2/envvars
/usr/sbin/apache2


##ssh start
/usr/sbin/sshd


##mysql start
if [ -z $MYSQL_ROOT_PASSWORD ]; then
  exit 1
fi

mysql_install_db --user mysql > /dev/null

cat > /tmp/sql <<EOF

USE mysql;

FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

UPDATE user SET password=PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user='root';

EOF

mysqld --bootstrap --verbose=0 < /tmp/sql

rm -rf /tmp/sql

mysqld


while true;
  do echo "still live";
  sleep 600;
done
#위 while문을 이용하여 ssh와 apache를 종료하더라도 컨테이너가 종료되지 않도록 설정
