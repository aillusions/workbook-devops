
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

    https://gruntwork.io/infrastructure-as-code-library/
        https://github.com/hashicorp/terraform-aws-consul
        https://github.com/hashicorp/terraform-aws-vault 
        
    packer build -only ubuntu16-ami consul.json   