DOCKER_NETWORK = docker_workbook_network
ENV_FILE = hadoop.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t bde2020/hadoop-base ./base
	docker build -t bde2020/hadoop-namenode ./namenode
	docker build -t bde2020/hadoop-datanode ./datanode
	docker build -t bde2020/hadoop-resourcemanager ./resourcemanager
	docker build -t bde2020/hadoop-nodemanager ./nodemanager
	docker build -t bde2020/hadoop-historyserver ./historyserver
	docker build -t bde2020/hadoop-submit ./submit

wordcount:
	docker build -t hadoop-wordcount ./submit
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} bde2020/hadoop-base hdfs dfs -mkdir -p /input/
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} bde2020/hadoop-base hdfs dfs -copyFromLocal /opt/hadoop-3.1.1/README.txt /input/
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hadoop-wordcount
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} bde2020/hadoop-base hdfs dfs -cat /output/*
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} bde2020/hadoop-base hdfs dfs -rm -r /output
	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} bde2020/hadoop-base hdfs dfs -rm -r /input