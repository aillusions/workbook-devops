
apt-get install iperf

    iperf -s 
    
    
        ------------------------------------------------------------
        Server listening on TCP port 5001
        TCP window size: 85.3 KByte (default)
        ------------------------------------------------------------
        iperf -c 198.51.100.5[  4] local 127.0.0.1 port 5001 connected with 127.0.0.1 port 47164
        [ ID] Interval       Transfer     Bandwidth
        [  4]  0.0-10.0 sec  73.8 GBytes  63.4 Gbits/sec [7.38 GB / sec] 
    
        
    iperf -c localhost
    
    
        ------------------------------------------------------------
        Client connecting to localhost, TCP port 5001
        TCP window size: 2.50 MByte (default)
        ------------------------------------------------------------
        [  3] local 127.0.0.1 port 47164 connected with 127.0.0.1 port 5001
        [ ID] Interval       Transfer     Bandwidth
        [  3]  0.0-10.0 sec  73.8 GBytes  63.4 Gbits/sec
        
    
brew install iperf    
    
    iperf -c home.zalizniak.com
    
        ------------------------------------------------------------
        Client connecting to home.zalizniak.com, TCP port 5001
        TCP window size:  129 KByte (default)
        ------------------------------------------------------------
        [  6] local 192.168.1.105 port 51970 connected with 176.36.229.152 port 5001
        [ ID] Interval       Transfer     Bandwidth
        [  6]  0.0-10.0 sec   170 MBytes   143 Mbits/sec
    
    iperf -c 192.168.1.103
    
        ------------------------------------------------------------
        Client connecting to 192.168.1.103, TCP port 5001
        TCP window size:  129 KByte (default)
        ------------------------------------------------------------
        [  4] local 192.168.1.105 port 51969 connected with 192.168.1.103 port 5001
        [ ID] Interval       Transfer     Bandwidth
        [  4]  0.0-10.0 sec   166 MBytes   139 Mbits/sec