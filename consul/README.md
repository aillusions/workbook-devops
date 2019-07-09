

AMI 

    cd consul/aws-consul/consul-ami
    packer build -only ubuntu16-ami consul.json


AWS
    
    cd consul/aws-consul
    terraform init
    
    export AWS_DEFAULT_REGION="eu-west-1"
    terraform apply
    
    
    
    http://ec2-18-202-26-212.eu-west-1.compute.amazonaws.com:8500
    
    http://ec2-52-212-61-51.eu-west-1.compute.amazonaws.com:8500