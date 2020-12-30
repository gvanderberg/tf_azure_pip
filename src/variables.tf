variable "public_ip_create" {
  default = "__public_ip_create__"
}

variable "public_ip_name" {
  default = "__public_ip_name__"
}

variable "location" {
  default = "__location__"
}

variable "resource_group_create" {
  default = "__resource_group_create__"
}

variable "resource_group_name" {
  default = "__resource_group_name__"
}

variable "tags" {
  default = {
    createdBy   = "Terraform"
    environment = "__tags_environment__"
    location    = "__tags_location__"
    managedBy   = "__tags_managed_by__"
  }
}
