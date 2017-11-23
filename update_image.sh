#!/bin/bash
server=$1
role=$2
if [ $# -lt 2 ];then
    echo error!
else
    #ssh $server "rm -rf /data/*; tar -zxf /cloudera-data.tar.gz -C /data/"
    #scp ../app-agent-linux-amd64.tar.gz $server:/opt/ 
    #ssh $server "tar -zxf /opt/app-agent-linux-amd64.tar.gz -C /opt/; rm -rf /opt/app-agent-linux-amd64.tar.gz"
    #ssh $server "cd /opt/app-agent-linux-amd64; ./install.sh; cd /opt/; rm -rf /opt/app-agent-linux-amd64"
    if [ "x$role" = "xcm" ];then
        scp -r confd/cloudera-manager/* $server:/etc/confd/
    elif [ "x$role" = "xslave" ];then
        scp -r confd/cdh-slave/* $server:/etc/confd/
    fi
    scp -r scripts/cdh $server:/opt/
fi
