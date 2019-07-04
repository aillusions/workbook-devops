
Image:


    # ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20190627.1 - ami-01e6a0b85de033c99
    # Canonical, Ubuntu, 18.04 LTS, amd64 bionic image build on 2019-06-27
    # Root device type: ebs Virtualization type: hvm ENA Enabled: Yes
 
    packer build image.json
    
    
Provision:    
   
    terraform init
    terraform apply
    terraform destroy
    
    ssh zalizniak.com
        docker ps