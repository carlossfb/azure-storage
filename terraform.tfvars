storage = {
  storage_account_name     = "sadevcarlossfb"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  container_name           = ["sa-dev-container", "sa-prod-container"]
}

resource_group = {
  name     = "rg-dev"
  location = "West Europe"
}