output "id" {
  value = element(coalescelist(azurerm_public_ip.this.*.id, data.azurerm_public_ip.this.*.id), 0)
}

output "ip_address" {
  value = element(coalescelist(azurerm_public_ip.this.*.ip_address, data.azurerm_public_ip.this.*.ip_address), 0)
}
