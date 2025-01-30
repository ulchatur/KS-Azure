module "vnet" {
  source          = "./modules/vnet"
  resource_group_name  = var.resource_group_name
  vnet_name       = var.vnet_name
  vnet_cidr       = var.vnet_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  location        = var.location
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = module.vnet.resource_group_name
  location            = var.location
  vnet_name           = module.vnet.vnet_name
  public_subnet_id    = module.vnet.public_subnet_id
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "postgresql" {
  source              = "./modules/postgresql"
  resource_group_name = module.vnet.resource_group_name
  location            = var.location
  db_admin_username   = var.db_admin_username
  db_admin_password   = var.db_admin_password
  private_subnet_id   = module.vnet.private_subnet_id
  private_nsg_id      = module.vnet.private_nsg_name
}
