output "resource_group_name" {
  description = "RG Name"
  value       = module.vnet.resource_group_name
}

output "vnet_name" {
  description = "VNet Name"
  value       = module.vnet.vnet_name
}

output "public_subnet_names" {
  description = "Public subnet name"
  value       = module.vnet.public_subnet_names
}

output "private_subnet_names" {
  description = "Private subnet name"
  value       = module.vnet.private_subnet_names
}

output "public_nsg_name" {
  description = "Public NSG"
  value       = module.vnet.public_nsg_name
}

output "private_nsg_name" {
  description = "Private NSG"
  value       = module.vnet.private_nsg_name
}

output "vm_id" {
  value = module.vm.vm_id
}

output "vm_public_ip" {
  value = module.vm.vm_public_ip
}

