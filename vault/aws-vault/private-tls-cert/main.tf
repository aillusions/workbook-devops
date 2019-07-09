module "vault_private-tls-cert" {
  source = "hashicorp/vault/aws//modules/private-tls-cert"
  version = "0.13.1"

  ca_public_key_file_path = "../vault-consul-ami/tls/zalizniak.com.crt.pem"
  public_key_file_path = "../vault-consul-ami/tls/vault.zalizniak.com.crt.pem"
  private_key_file_path = "../vault-consul-ami/tls/vault.zalizniak.com.key.pem"
  owner = "alex"
  organization_name = "zalizniak.com"
  ca_common_name = "zalizniak.com cert"
  common_name = "vault.zalizniak.com cert"
  dns_names = ["vault.zalizniak.com"]
  ip_addresses = []
  validity_period_hours = 24
}