terraform {
  backend "remote" {}
}

module "rg" {
  source = "./modules/resource_group"

  resource_group_create   = var.resource_group_create
  resource_group_name     = var.resource_group_name
  resource_group_location = var.location
  tags                    = var.tags
}

module "pip" {
  source = "./modules/public_ip"

  public_ip_create        = var.public_ip_create
  public_ip_name          = var.public_ip_name
  resource_group_name     = module.rg.name
  resource_group_location = module.rg.location
  tags                    = var.tags
}
