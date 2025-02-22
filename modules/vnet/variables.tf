variable "resource_group_name" {
  description = "RG name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Vnet name"
  type        = string
}

variable "vnet_cidr" {
  description = "Vnet CIDR"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet CIDR"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDR"
  type        = list(string)
}

