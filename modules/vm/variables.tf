variable "resource_group_name" {
  description = "RG name"
  type        = string
}

variable "vnet_name" {
  description = "vnet name"
  type        = string
}

variable "public_subnet_id" {
  description = "public subnet ID"
  type        = string
}

variable "location" {
  description = "VM region"
  type        = string
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "vm_size" {
  description = "VM Size"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "admin username for VM"
  type        = string
}

variable "admin_password" {
  description = "admin password for VM"
  type        = string
}

