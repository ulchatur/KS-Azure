output "vm_id" {
  description = "VM ID"
  value       = azurerm_virtual_machine.main.id
}

output "vm_public_ip" {
  description = "VM Public IP"
  value       = azurerm_network_interface.main.private_ip_address
}

