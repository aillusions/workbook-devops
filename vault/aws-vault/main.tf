# https://www.terraform.io/docs/configuration/modules.html

module "vault_example_vault-cluster-private" {
  source = "hashicorp/vault/aws//examples/vault-cluster-private"
  version = "0.13.1"
  # insert the 3 required variables here

  ssh_key_name = "zalizniak_com_aws"
  ami_id = "ami-0aae888c2d619f913"
  vault_cluster_size = 2
  consul_cluster_size = 1
  vault_cluster_name = "OZ-vault-cluster"
  consul_cluster_name = "OZ-consul-cluster"
  vault_instance_type = "t2.nano"
  consul_instance_type = "t2.nano"
  consul_cluster_tag_key = "OZ-consul"
  vpc_id = "vpc-c6b707a2"
}

resource "aws_route53_record" "vault_zalizniak_com" {
  name = "vault.zalizniak.com"
  type = "A"
  ttl = "60"
  records = ["34.250.124.34"]
  zone_id = "Z5JZ8WD67Q3IA"
}