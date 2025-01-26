resource "azurerm_public_ip" "main" {
  name                = "ks-vm-public-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  lifecycle {
    prevent_destroy = false
  }
}
resource "azurerm_network_interface" "main" {
  name                = "ks-vm-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.public_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.main.id
  }
  lifecycle {
    prevent_destroy = false
  }
}

resource "azurerm_virtual_machine" "main" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size                = var.vm_size

  storage_os_disk {
    name              = "ks-vm-os-disk"
    create_option     = "FromImage"
    os_type           = "Linux"
    disk_size_gb      = 30
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  delete_os_disk_on_termination = true
}
