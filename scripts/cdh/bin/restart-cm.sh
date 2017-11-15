#!/bin/bash
cm_ip="127.0.0.1"
ret_cm=0
ret_mysqld=0
ret_httpd=0

# start httpd
service httpd restart
ret_httpd=$?
ret_httpd=$[100 * $ret_httpd]

# start mysql
service mysqld restart
ret_mysqld=$?
ret_mysqld=$[10 * $ret_mysqld]

# start cloudera manager service
service cloudera-scm-server restart
ret_cm=0

exit $[$ret_cm + $ret_mysqld + $ret_httpd]