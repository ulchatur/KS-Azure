variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region"
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

variable "private_subnet_id" {
  description = "ID of the private subnet"
  type        = string
}

variable "private_nsg_id" {
  description = "ID of the private subnet's NSG"
  type        = string
}

