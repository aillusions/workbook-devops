

docker exec -it hbase-master bash

   hbase shell

       status
       
            1 active master, 0 backup masters, 1 servers, 0 dead, 2.0000 average load
            
            
       create 'test_table', 'family_a', 'family_b'     
       
       list 
       
       put 'test_table', '000000001', 'family_a:column_a_1', 'hello world'
       put 'test_table', '000000001', 'family_a:column_a_2', 'hello world - 2'
       
       scan 'test_table'
         
docker exec -it nodemanager bash

    hdfs dfs -ls /hbase
    
        Found 8 items
        
        drwxr-xr-x   - root supergroup          0 2019-07-27 10:46 /hbase/.tmp
        drwxr-xr-x   - root supergroup          0 2019-07-27 10:46 /hbase/MasterProcWALs
        drwxr-xr-x   - root supergroup          0 2019-07-27 10:46 /hbase/WALs
        drwxr-xr-x   - root supergroup          0 2019-07-27 10:46 /hbase/corrupt
        drwxr-xr-x   - root supergroup          0 2019-07-27 02:19 /hbase/data
        -rw-r--r--   3 root supergroup         42 2019-07-27 02:19 /hbase/hbase.id
        -rw-r--r--   3 root supergroup          7 2019-07-27 02:19 /hbase/hbase.version
        drwxr-xr-x   - root supergroup          0 2019-07-27 10:46 /hbase/oldWALs
            