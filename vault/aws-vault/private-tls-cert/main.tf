module "vault_private-tls-cert" {
  source = "hashicorp/vault/aws//modules/private-tls-cert"
  version = "0.13.1"

  ca_public_key_file_path = "../vault-consul-ami/tls/ca.crt.pem"
  public_key_file_path = "../vault-consul-ami/tls/vault.crt.pem"
  private_key_file_path = "../vault-consul-ami/tls/vault.key.pem"
  owner = "alex"
  organization_name = "zalizniak.com"
  ca_common_name = "vault.zalizniak.com cert"
  common_name = "vault.zalizniak.com cert"
  dns_names = ["vault.zalizniak.com"]
  ip_addresses = []
  validity_period_hours = 24
}