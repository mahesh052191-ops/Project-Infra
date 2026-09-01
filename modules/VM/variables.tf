variable "vm_name" {
  type = string
  description = "this is the name of the virtual machine"
}
variable "vm_size" {
  type = string
  description = "this is the size of the virtual machine"
}
variable "admin_username" {
  type = string
  description = "this is the admin username for the virtual machine"
}
variable "admin_password" {
  type = string
  sensitive = true
  description = "this is the admin password for the virtual machine"
}
variable "image_publisher" {
  type = string
  description = "this is the publisher of the image for the virtual machine"
}
variable "resource_group_name" {
  type = string
  description = "this is the name of the resource group"
}
variable "image_offer" {
  type = string
  description = "this is the offer of the image for the virtual machine"
}
variable "location" {
  type = string
  description = "this is the location of the virtual machine"
}
variable "image_sku" {
  type = string
  description = "this is the sku of the image for the virtual machine"
}
variable "environment" {
  type = string
  description = "this is the environment of the virtual machine"
}
