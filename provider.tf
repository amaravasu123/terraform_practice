terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  subscription_id= "e7f604c4-9f5d-45ad-9720-71e91499dd5c"
  tenant_id= ""
  client_id= " "
  client_secret= ""
  features {}
}