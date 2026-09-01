# This module creates a virtual network and subnets in Azure.
#please ensure that you have the necessary permissions to create resources in the specified resource group and location. The module requires the following input variables: vnet_name, vnet_address_space, location, resource_group_name, subnet_names, and subnet_prefixes. Make sure to provide appropriate values for these variables when using this module.

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  count = length(var.subnet_names)
  name                 = var.subnet_names[count.index]  
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_prefixes[count.index] ]  
}     