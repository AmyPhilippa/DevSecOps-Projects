# HashiCorp Vault: example secret for Zero Trust demo

provider "vault" {
  address = "https://vault.example.com"
}

resource "vault_generic_secret" "ztna_demo" {
  path = "secret/data/ztna-demo"
  data_json = jsonencode({
    username = "demo-user"
    password = "S3cureP@ssw0rd"
  })
}
