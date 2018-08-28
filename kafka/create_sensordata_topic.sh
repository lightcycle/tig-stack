#!/bin/bash
RET=1
until [ ${RET} -eq 0 ]; do
  echo "Creating topic..."
  /opt/kafka_2.11-0.10.1.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic sensordata
  RET=$?
  echo "Topic creation returned ${RET}"
done
