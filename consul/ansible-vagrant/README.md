

https://github.com/brianshumate/ansible-consul/blob/master/examples/README_VAGRANT.md

Install:  VirtualBox, Vagrant, Ansible

pip install netaddr

then:
    ansible-galaxy install brianshumate.consul
    vagrant plugin install vagrant-hosts
    
    vi /private/etc/hosts
    
        10.1.42.210 consul1.consul consul1
        10.1.42.220 consul2.consul consul2
        10.1.42.230 consul3.consul consul3
        
        
    cd /Users/alex/.ansible/roles/brianshumate.consul/examples
    
    vagrant up
    vagrant global-status
    
    
    957384a  consul1 virtualbox running /Users/alex/.ansible/roles/brianshumate.consul/examples 
    4efdebc  consul2 virtualbox running /Users/alex/.ansible/roles/brianshumate.consul/examples 
    57ad1ce  consul3 virtualbox running /Users/alex/.ansible/roles/brianshumate.consul/examples
    
    
    vagrant ssh consul1
        consul operator raft -list-peers
        
        
    vagrant destroy
    
    CONSUL_DNSMASQ_ENABLE=true vagrant up    
    
    
    