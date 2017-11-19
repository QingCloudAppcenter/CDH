#!/bin/bash
tar -zxf /cloudera-cm.tar.gz -C /data/
tar -zxf /var-cm.tar.gz -C /data/
rm -rf /*.tar.gz 2>/dev/null
ln -s /data/cloudera /opt/cloudera
exit 0