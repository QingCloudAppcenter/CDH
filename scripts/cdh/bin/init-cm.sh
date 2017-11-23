#!/bin/bash
tar -zxf /cloudera-cm.tar.gz -C /data/
tar -zxf /var-cm.tar.gz -C /data/
rm -rf /*.tar.gz 2>/dev/null
ln -s /data/cloudera /opt/cloudera

ln -s /data/var/lib/cloudera-host-monitor /var/lib/cloudera-host-monitor
ln -s /data/var/lib/cloudera-scm-agent /var/lib/cloudera-scm-agent
ln -s /data/var/lib/cloudera-scm-eventserver /var/lib/cloudera-scm-eventserver
ln -s /data/var/lib/cloudera-scm-headlamp /var/lib/cloudera-scm-headlamp
ln -s /data/var/lib/cloudera-service-monitor /var/lib/cloudera-service-monitor
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