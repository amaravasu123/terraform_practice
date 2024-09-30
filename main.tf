

module "resource_group" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source                = "./modules/vnet"
  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space
  subnet_name           = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  resource_group_name   = module.resource_group.resource_group_name
  location              = module.resource_group.resource_group_location
}

module "storage_account" {
  source                = "./modules/storage_account"
  storage_account_name  = var.storage_account_name
  resource_group_name   = module.resource_group.resource_group_name
  location              = module.resource_group.resource_group_location
}

module "aks" {
  source                      = "./modules/aks"
  aks_name                    = var.aks_name
  dns_prefix                  = var.dns_prefix
  node_count                  = var.node_count
  vm_size                     = var.vm_size
  resource_group_name         = module.resource_group.resource_group_name
  location                    = module.resource_group.resource_group_location
  subnet_id                   = module.vnet.subnet_id
  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges
}
