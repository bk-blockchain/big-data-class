#!/bin/bash
docker exec -d spark_master /usr/spark-2.2.0/sbin/start-master.sh
docker exec -d spark_worker_01 /usr/spark-2.2.0/sbin/start-slave.sh spark://master:7077
docker exec -d spark_worker_02 /usr/spark-2.2.0/sbin/start-slave.sh spark://master:7077
