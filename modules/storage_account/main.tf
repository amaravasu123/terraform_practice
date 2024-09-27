provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  #enable_https_traffic_only = true
}
