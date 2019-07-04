
provider "aws" {
  region  = "eu-west-1"
  profile = "oz_devops_user"
  version = "~> 2.14"
}

resource "aws_instance" "ansible_instance" {
  ami           = "ami-0d09fe7e41b725697"
  instance_type = "t2.nano"
  key_name = "zalizniak_com_aws"
  security_groups =  [aws_security_group.remote_dev_machine_sg.id]
  subnet_id = "subnet-5c459904"
}

resource "aws_route53_record" "route53_zalizniak_com" {
  name = "zalizniak.com"
  type = "A"
  ttl = "60"
  records = [aws_instance.ansible_instance.public_ip]
  zone_id = "Z5JZ8WD67Q3IA"
  depends_on = ["aws_instance.ansible_instance"]
}

resource "aws_security_group" "remote_dev_machine_sg" {
  name        = "remote_dev_machine_sg"
  description = "remote_dev_machine_sg"
  vpc_id      = "vpc-c6b707a2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["176.36.229.152/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}