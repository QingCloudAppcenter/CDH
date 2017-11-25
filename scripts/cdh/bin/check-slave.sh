#!/bin/bash
if [ ! -f "/var/log/cloudera-scm-agent/cloudera-scm-agent.log" ]; then
  exit 0
fi

pid=`ps -ef | grep cmf-agent | grep -v grep| awk '{print $2}'`
if [ "x$pid" = "x" ]
then
  exit 1
else
  exit 0
fi