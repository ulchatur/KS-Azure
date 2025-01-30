variable "resource_group_name" {
  description = "New RG"
  type        = string
}

variable "vnet_name" {
  description = "VNet name"
  type        = string
}

variable "vnet_cidr" {
  description = "VNet CIDR Range"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet CIDR range"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDR range"
  type        = list(string)
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "vm_size" {
  description = "VM Size"
  type        = string
}

variable "admin_username" {
  description = "admin username for VM"
  type        = string
}

variable "admin_password" {
  description = "admin password for VM"
  type        = string
}

variable "db_admin_username" {
  description = "The admin username for the PostgreSQL server"
  type        = string
}

variable "db_admin_password" {
  description = "The admin password for the PostgreSQL server"
  type        = string
}
