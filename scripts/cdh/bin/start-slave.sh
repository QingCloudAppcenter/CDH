#!/bin/bash
#rm -rf /var.tar.gz 2>/dev/null
ret=0
pid=`ps -ef | grep cmf-agent | grep -v grep| awk '{print $2}'`
if [ "x$pid" = "x" ]
then
    service cloudera-scm-agent start
    ret=$?
fi
exit ret