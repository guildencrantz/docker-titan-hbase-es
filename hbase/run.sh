#!/bin/sh

export JAVA_HOME=/usr/java/latest

/hbase-0.94.24/bin/start-hbase.sh

while (( $(ps auxww | grep "HMaster start" | grep -v grep | wc -l) > 0 )); do
  sleep 1
done

# vim: set ts=2 sw=2 sts=2 ai et :
