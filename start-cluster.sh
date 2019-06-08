#!/bin/bash
docker exec -d spark_master /usr/spark-2.2.0/sbin/start-slave.sh spark://master:7077
