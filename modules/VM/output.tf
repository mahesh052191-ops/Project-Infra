output "vm_id" {
  value = azurerm_windows_virtual_machine.winvm.id
  description = "This is VM id"
}

output "private_ip" {
  description = "This is private IP"
  value = azurerm_network_interface.nic.private_ip_address
}
