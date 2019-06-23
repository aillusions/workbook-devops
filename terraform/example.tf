
# https://www.terraform.io/docs/providers/aws/r/instance.html

provider "aws" {
  region  = var.aws_region
  profile = "oz_devops_user"
  version = "~> 2.14"
}

resource "aws_instance" "ansible_instance" {
  count = 1
  ami           = "ami-0ff760d16d9497662"
  instance_type = "t2.nano"
  key_name = "zalizniak_com_aws"
  security_groups = ["oz_ec2_ansible_instance_sg"]
  iam_instance_profile = "oz_ec2_ansible_instance_role"
  subnet_id = "subnet-5c459904"
}
