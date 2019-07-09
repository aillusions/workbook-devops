# https://www.terraform.io/docs/configuration/modules.html

module "vault_example_vault-cluster-private" {
  source = "hashicorp/vault/aws//examples/vault-cluster-private"
  version = "0.13.1"
  # insert the 3 required variables here

  ssh_key_name = "zalizniak_com_aws"
  ami_id = "123"
  region= "eu-west-1"
}