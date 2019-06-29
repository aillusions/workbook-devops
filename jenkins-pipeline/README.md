
Create
    
    Key:
        oleksandr.zalizniak
        
    SG:
        sg-04e78e5bda9ce86f2
        - 22
        - 8080

    EC2 instance:
        eu-west-1
        t2.small
        ami-08a513e712b159797
        ec2-34-240-125-51.eu-west-1.compute.amazonaws.com
        ssh -i ~/.ssh/oleksandrzalizniak.pem ubuntu@ec2-34-240-125-51.eu-west-1.compute.amazonaws.com

ansible

    pip install ansible
    
    cd ansible 
    
    ansible workbook -m ping -i ./hosts
    
    ansible workbook -a "/bin/echo hello" -i ./hosts
    
    ansible-playbook playbook.yml --list-hosts  -i ./hosts

    ansible-galaxy install geerlingguy.jenkins
    #ansible-galaxy install ansiblebit.awscli
    ansible-galaxy install tommarshall.awscli
    
    export ANSIBLE_DEBUG=0
    ansible-playbook playbook.yml -f 1 -i ./hosts
    
    tail -f jenkins.log
    
    GO to http://ec2-34-240-125-51.eu-west-1.compute.amazonaws.com:8080
            
    sudo /etc/init.d/jenkins restart

Git:
    git config --global credential.helper '!aws --profile workbook-test-user codecommit credential-helper $@'    
    git config --global credential.UseHttpPath true
    git clone https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/aillusions_at_gmail.com


Docker build
    chmod +x ./docker/docker-entrypoint.sh
    docker build --build-arg HAPROXY_VERSION=v2.0.0 -f ./docker/Dockerfile  -t aillusions/workbook-hapoxy-zalianiak:v2.0.0.alpine .
    docker login 
    docker push aillusions/workbook-hapoxy-zalianiak:v2.0.0.alpine
    echo "$(docker image inspect aillusions/workbook-hapoxy-zalianiak:v2.0.0.alpine --format='{{.Size}}') / 1024 / 1024" | bc
    
    
See Available tags: 
    https://github.com/haproxy/haproxy/tags    
    
TODO aws cli to create: sg, ec2 instance    