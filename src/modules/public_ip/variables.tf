variable "public_ip_create" {
  description = "Should the public IP address be created."
  type        = bool
}

variable "public_ip_name" {
  description = "Specifies the name of the public IP address."
  type        = string
}

variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the public ip."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(any)
}
