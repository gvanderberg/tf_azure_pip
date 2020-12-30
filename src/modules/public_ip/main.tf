data "azurerm_public_ip" "this" {
  count = var.public_ip_create ? 0 : 1

  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_public_ip" "this" {
  count = var.public_ip_create ? 1 : 0

  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  allocation_method   = "Static"
  sku                 = "standard"
  tags                = var.tags
}
