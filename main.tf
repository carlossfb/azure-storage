resource "azurerm_resource_group" "rg" {
  name     = var.resource_group.name
  location = var.resource_group.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage.account_tier
  account_replication_type = var.storage.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "sc" {
  count = length(var.storage.container_name)

  name                 = var.storage.container_name[count.index]
  storage_account_name = azurerm_storage_account.sa.name
}