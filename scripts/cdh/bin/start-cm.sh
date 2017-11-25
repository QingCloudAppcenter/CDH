#!/bin/bash
rm -rf /*.tar.gz 2>/dev/null

cm_ip="127.0.0.1"
ret_cm=0
ret_mysqld=0
ret_httpd=0

# start httpd
service httpd start
ret_httpd=$?
ret_httpd=$[100 * $ret_httpd]

# start mysql
service mysqld start
ret_mysqld=$?
ret_mysqld=$[10 * $ret_mysqld]

# start cloudera manager service
curl -o /dev/null -I $cm_ip:7180
ret_cm=$?
if [ "$ret_cm" -eq 0 ]
then
    echo "Cloudera Manager is already running!"
else
    service cloudera-scm-server start
    ret_cm=0
fi

exit $[$ret_cm + $ret_mysqld + $ret_httpd]