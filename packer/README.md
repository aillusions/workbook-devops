 packer validate example.json
 
 
 packer build \
     -var 'aws_access_key=YOUR ACCESS KEY' \
     -var 'aws_secret_key=YOUR SECRET KEY' \
     example.json
    
     
packer build docker.json
docker image ls | grep my-ubuntu
docker run -it my-ubuntu:0.0.1