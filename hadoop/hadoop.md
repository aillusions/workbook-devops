

cd hadoop/docker
./env.sh



docker exec -it namenode bash


hdfs dfs -ls /

    Found 4 items
    drwxrwxrwt   - root supergroup          0 2019-07-26 10:14 /app-logs
    drwxr-xr-x   - root supergroup          0 2019-07-26 10:14 /input
    drwxr-xr-x   - root supergroup          0 2019-07-26 09:50 /rmstate
    drwx------   - root supergroup          0 2019-07-26 10:14 /tmp


hdfs dfs -ls /input

    Found 1 items
    -rw-r--r--   3 root supergroup       1366 2019-07-26 10:14 /input/README.txt

 
hdfs fsck / 

    ..Status: HEALTHY
     Total size:    197205 B
     Total dirs:    18
     Total files:   16
     Total symlinks:                0
     Total blocks (validated):      16 (avg. block size 12325 B)
     Minimally replicated blocks:   16 (100.0 %)
     Over-replicated blocks:        0 (0.0 %)
     Under-replicated blocks:       2 (12.5 %)
     Mis-replicated blocks:         0 (0.0 %)
     Default replication factor:    3
     Average block replication:     3.0
     Corrupt blocks:                0
     Missing replicas:              14 (22.580645 %)
     Number of data-nodes:          3
     Number of racks:               1
    FSCK ended at Fri Jul 26 11:52:08 UTC 2019 in 9 milliseconds




hadoop version

    Hadoop 2.7.1
    Subversion https://git-wip-us.apache.org/repos/asf/hadoop.git -r 15ecc87ccf4a0228f35af08fc56de536e6ce657a
    Compiled by jenkins on 2015-06-29T06:04Z
    Compiled with protoc 2.5.0
    From source with checksum fc0a1a23fc1868e4d5ee7fa2b28a58a
    This command was run using /opt/hadoop-2.7.1/share/hadoop/common/hadoop-common-2.7.1.jar


jps

    293 NameNode
    2392 Jps
    
    
    
echo  "hello" > alex.txt    
hadoop fs -put ./alex.txt /alex.txt

hdfs dfs -ls /
    
    Found 5 items
    -rw-r--r--   3 root supergroup          6 2019-07-26 13:05 /alex.txt
    drwxrwxrwt   - root supergroup          0 2019-07-26 10:14 /app-logs
    drwxr-xr-x   - root supergroup          0 2019-07-26 10:14 /input
    drwxr-xr-x   - root supergroup          0 2019-07-26 09:50 /rmstate
    drwx------   - root supergroup          0 2019-07-26 10:14 /tmp

hdfs dfs -ls /app-logs/root/logs/application_1564135417131_0001/e77abf17630b_33513
hadoop fs -cat /app-logs/root/logs/application_1564135417131_0001/e77abf17630b_33513


hdfs dfs -cat /app-logs/root/logs/application_1564146959766_0001/1b2ed42523d3_46701


make wordcount


hdfs dfs -rm /input/README.txt
hdfs dfs -ls /input/README.txt


http://localhost:8089/cluster/apps