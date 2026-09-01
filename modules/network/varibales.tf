variable "vnet_name" {
  type = string
  description = "this is Vnet Name"
}
variable "vnet_address_space" {
  type = string
  description = "this is Vnet Address Space"
}
variable "location" {
  type = string
  description = "this is the location of the Vnet"
}
variable "resource_group_name" {
  type = string
  description = "this is the name of the resource group"
}
variable "subnet_names" {
  type = list(string)
  description = "this is the list of subnet names"
}
variable "subnet_prefixes" {
  type = list(string)
  description = "this is the list of subnet prefixes"
}