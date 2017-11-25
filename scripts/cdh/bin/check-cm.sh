#!/bin/bash
cm_ip="127.0.0.1"
ret_cm=0
ret_mysqld=0
ret_httpd=0

if [ `ls -l /var/log/cloudera-scm-server/cloudera-scm-server.log | awk '{print $5}'` = "0" ]
then
    ret_cm=0
else
    # check cloudera manager service status
    curl -o /dev/null -I $cm_ip:7180
    ret_cm=$?
fi

# check mysql status
service mysqld status
ret_mysqld=$?
ret_mysqld=$[10 * $ret_mysqld]

# check httpd status
service httpd status
ret_httpd=$?
ret_httpd=$[100 * $ret_httpd]

exit $[$ret_cm + $ret_mysqld + $ret_httpd]