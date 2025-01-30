output "postgresql_server_name" {
  description = "The name of the PostgreSQL server"
  value       = azurerm_postgresql_server.main.name
}

output "postgresql_server_fqdn" {
  description = "The FQDN of the PostgreSQL server"
  value       = azurerm_postgresql_server.main.fqdn  # Use fqdn instead of fully_qualified_domain_name
}

