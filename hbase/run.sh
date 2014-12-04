#!/bin/sh

source ~/.bashrc

trap $HBASE_HOME/bin/stop-hbase.sh SIGINT SIGTERM

$HBASE_HOME/bin/start-hbase.sh

while (( $(ps auxww | grep "HMaster start" | grep -v grep | wc -l) > 0 )); do
  sleep 5
done

echo "hbase done"

# vim: set ts=2 sw=2 sts=2 ai et :
