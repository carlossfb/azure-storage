variable "resource_group" {
  type = object({
    name     = string
    location = string
  })
  description = "Object to define the attributes of the resource group"
}

variable "storage" {
  type = object({
    storage_account_name     = string
    account_tier             = string
    account_replication_type = string
    container_name           = list(string)
  })
  description = "Object for defining the attributes of a storage and its respective containers"
}
