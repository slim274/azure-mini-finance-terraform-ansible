variable "location" {
  description = "Azure region"
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "Resource group name"
  default     = "rg-mini-finance"
}

variable "vnet_name" {
  default = "vnet-mini"
}

variable "subnet_name" {
  default = "subnet-mini"
}

variable "nsg_name" {
  default = "nsg-mini"
}

variable "vm_name" {
  default = "vm-mini"
}

variable "vm_size" {
  description = "VM size"
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_ip_name" {
  default = "pip-mini"
}

variable "nic_name" {
  default = "nic-mini"
}

variable "ssh_source_cidr" {
  description = "Trusted public IPv4 address allowed to access SSH, in /32 CIDR format"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.ssh_source_cidr)) && can(regex("/32$", var.ssh_source_cidr))
    error_message = "Provide a valid trusted IPv4 address in /32 format."
  }
}
