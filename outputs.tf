output "dev_vnet_id" {
  description = "VNet ID for dev environment"
  value       = module.network.vnet_id
}

output "dev_subnet_ids" {
  description = "Subnet IDs for dev environment"
  value       = module.network.subnet_ids
}
