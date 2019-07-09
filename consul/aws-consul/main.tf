# https://registry.terraform.io/modules/hashicorp/consul/aws/0.7.0/submodules/consul-cluster

module "oz_consul_cluster" {
  source = "hashicorp/consul/aws//modules/consul-cluster"
  version = "0.7.0"
  # insert the 11 required variables here


  # Specify the ID of the Consul AMI. You should build this using the scripts in the install-consul module.
  ami_id = "ami-0c074c3776ceb18d3"

  # Add this tag to each node in the cluster
  cluster_tag_key = "consul-cluster"
  cluster_tag_value = "consul-cluster-example"

  # Configure and start Consul during boot. It will automatically form a cluster with all nodes that have that same tag.
  user_data = <<-EOF
              #!/bin/bash
              /opt/consul/bin/run-consul --server --cluster-tag-key consul-cluster
              EOF

  ssh_key_name = "zalizniak_com_aws"
  cluster_size = 1
  cluster_name = "OZ-consul-cluster"
  instance_type = "t2.nano"
  vpc_id = "vpc-c6b707a2"
  allowed_inbound_cidr_blocks = ["0.0.0.0/0"]
  availability_zones = ["eu-west-1a"]
}