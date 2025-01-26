output "public_subnet_id" {
  description = "Public subnet ID"
  value       = azurerm_subnet.public.id
}

output "resource_group_name" {
  description = "RG name"
  value       = azurerm_resource_group.main.name
}

output "vnet_id" {
  description = "VNet ID"
  value       = azurerm_virtual_network.main.id
}

output "vnet_name" {
  description = "VNet name"
  value       = azurerm_virtual_network.main.name
}

output "public_subnet_names" {
  description = "Public subnet name"
  value       = azurerm_subnet.public[*].name
}

output "private_subnet_names" {
  description = "Private subnet name"
  value       = azurerm_subnet.private[*].name
}

output "public_nsg_name" {
  description = "Public NSG"
  value       = azurerm_network_security_group.public.name
}

output "private_nsg_name" {
  description = "Private NSG"
  value       = azurerm_network_security_group.private.name
}

