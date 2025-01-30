resource "azurerm_postgresql_server" "main" {
  name                         = "ks-postgresql-server"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "10"  # Use the latest available version
  sku_name                     = "GP_Gen5_4"  # 4 vCores, 32GB RAM
  storage_mb                   = 102400  # 100GB
  backup_retention_days        = 7  # No backup needed
  administrator_login          = var.db_admin_username
  administrator_login_password = var.db_admin_password
  ssl_enforcement_enabled      = true  # Correct argument for enforcing SSL
}
