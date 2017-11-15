#!/bin/bash
server=$1
role=$2
if [ $# -lt 2 ];then
    echo error!
else
    scp ../app-agent-linux-amd64.tar.gz $server:/opt/ 
    ssh $server "tar -zxf /opt/app-agent-linux-amd64.tar.gz -C /opt/"
    ssh $server "rm /opt/app-agent-linux-amd64.tar.gz"
    ssh $server "cd /opt/app-agent-linux-amd64; ./install.sh; rm -rf /opt/app-agent-linux-amd64"
    if [ "x$role" = "xcm" ];then
        scp -r confd/cloudera-manager/conf.d $server:/etc/confd/
        scp -r confd/cloudera-manager/templates $server:/etc/confd/
    elif [ "x$role" = "xslave" ];then
        scp -r confd/cdh-slave/conf.d $server:/etc/confd/
        scp -r confd/cdh-slave/templates $server:/etc/confd/
    fi
    scp -r scripts/cdh $server:/opt/
fi
