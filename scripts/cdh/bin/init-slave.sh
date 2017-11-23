#!/bin/bash
tar -zxf /cloudera-slave.tar.gz -C /data/
tar -zxf /var-slave.tar.gz -C /data/
rm -rf /*.tar.gz 2>/dev/null
ln -s /data/cloudera /opt/cloudera
mkdir -p /data/dfs
mkdir -p /data/yarn
ln -s /data/dfs /opt/dfs
ln -s /data/yarn /opt/yarn

ln -s /data/var/lib/cloudera-scm-agent /var/lib/cloudera-scm-agent
ln -s /data/var/lib/cloudera-scm-server /var/lib/cloudera-scm-server
ln -s /data/var/lib/dav /var/lib/dav
ln -s /data/var/lib/flume-ng /var/lib/flume-ng
ln -s /data/var/lib/hadoop-hdfs /var/lib/hadoop-hdfs
ln -s /data/var/lib/hadoop-httpfs /var/lib/hadoop-httpfs
ln -s /data/var/lib/hadoop-kms /var/lib/hadoop-kms
ln -s /data/var/lib/hadoop-mapreduce /var/lib/hadoop-mapreduce
ln -s /data/var/lib/hadoop-yarn /var/lib/hadoop-yarn
ln -s /data/var/lib/hbase /var/lib/hbase
ln -s /data/var/lib/hive /var/lib/hive
ln -s /data/var/lib/impala /var/lib/impala
ln -s /data/var/lib/kudu /var/lib/kudu
ln -s /data/var/lib/llama /var/lib/llama
ln -s /data/var/lib/oozie /var/lib/oozie
ln -s /data/var/lib/rpcbind /var/lib/rpcbind
ln -s /data/var/lib/sentry /var/lib/sentry
ln -s /data/var/lib/solr /var/lib/solr
ln -s /data/var/lib/spark /var/lib/spark
ln -s /data/var/lib/sqoop /var/lib/sqoop
ln -s /data/var/lib/sqoop2 /var/lib/sqoop2
ln -s /data/var/lib/zookeeper /var/lib/zookeeper

exit 0