#!/bin/bash

source /etc/apache2/envvars
/usr/sbin/apache2

/usr/sbin/sshd -D

while true;
  do echo "still live";
  sleep 600;
done
#위 while문을 이용하여 ssh와 apache를 종료하더라도 컨테이너가 종료되지 않도록 설정
