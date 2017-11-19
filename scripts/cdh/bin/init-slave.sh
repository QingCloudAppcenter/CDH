#!/bin/bash
tar -zxf /cloudera-slave.tar.gz -C /data/
tar -zxf /var-slave.tar.gz -C /data/
rm -rf /*.tar.gz 2>/dev/null
ln -s /data/cloudera /opt/cloudera
mkdir -p /data/dfs
mkdir -p /data/yarn
ln -s /data/dfs /opt/dfs
ln -s /data/yarn /opt/yarn
exit 0