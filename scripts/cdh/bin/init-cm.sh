#!/bin/bash
tar -zxf /cloudera-data.tar.gz -C /data/
rm -rf /cloudera-data.tar.gz 2>/dev/null
ln -s /data/cloudera /opt/cloudera
exit 0