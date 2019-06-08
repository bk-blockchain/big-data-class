# Lecture note

## Step by step to run a cluster
+ Chạy master node trên môt máy, ví dụ tại 192.168.0.100 (master-spark)
+ Sửa file docker-compose.yml để định nghĩa SPARK_MASTER=spark://master-spark:7077
+ Chỉnh master-spark:192.168.0.100
+ Build spark_master image: docker-compose build spark_master
+ Run bash: docker exec -it spark_master bash
+ Chạy worker kết nối vào master: /usr/spark-2.2.0/sbin/start-slave.sh spark://192.168.0.100:7077
+ Chỉnh spark interpreter của Zeppelin trong: http://localhost/#/interpreter thành spark://192.168.0.100:7077

+ Cài rabbitmq để trung chuyển dữ liệu từ crawler: docker-compose up -d --build rabbitmq
+ Cài elasticsearch để lưu trữ dữ liệu: docker-compose up -d --build elasticsearch
