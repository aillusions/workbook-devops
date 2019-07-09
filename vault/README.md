
Every user account should have own token
Also every deployed application should have own token 

docker exec -it workbook-vault-srv sh
 export VAULT_ADDR='http://127.0.0.1:8200'
 vault status
 vault login
    myroot
 vault kv put secret/hello foo=world
 vault kv get secret/hello
 vault kv get -field=foo secret/hello
 vault kv get -format=json secret/hello | jq -r .data.data.excited
 vault kv delete secret/hello
 vault secrets list
 
 
 vault kv put secret/my-server/production/db my-db-user=password1234
 vault kv get secret/my-server/production/db my-db-user
 
 

AWS 

    https://registry.terraform.io/

    https://gruntwork.io/infrastructure-as-code-library/
        https://github.com/hashicorp/terraform-aws-consul
        https://github.com/hashicorp/terraform-aws-vault 
    
    https://github.com/hashicorp/terraform-aws-vault/tree/master/examples/vault-consul-ami
    
        cd vault/aws-vault/private-tls-cert
        terraform init
        terraform apply
                 
        cd vault/aws-vault/vault-consul-ami
        packer build -only ubuntu16-ami vault-consul.json
    
    export AWS_DEFAULT_REGION="eu-west-1"
    https://registry.terraform.io/modules/hashicorp/vault/aws/0.13.1/examples/vault-cluster-private
        cd vault/aws-vault
        terraform init
        terraform plan
        terraform apply
        
        
    https://vault.zalizniak.com:8200/ui/vault/auth?with=token   
    export VAULT_ADDR='https://vault.zalizniak.com:8200'
    vault status
    vault login 
    vault operator seal 