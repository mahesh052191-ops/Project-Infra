output "vnet_id" {
  description = "this is vnet id"
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  description = "this is subnet ids"
  value = azurerm_subnet.subnet[*].id
}
