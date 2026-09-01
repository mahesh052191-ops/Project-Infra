# Call the network module
module "network" {
  source          = "../../modules/network"
  vnet_name       = "dev-vnet"
  resource_group  = "dev-rg"
  location        = "eastus"
  address_space   = ["10.0.0.0/16"]

  # Loop-friendly subnet definitions
  subnet_names    = ["frontend", "backend", "database"]
  subnet_prefixes = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# Example: consume outputs from the network module


module "windows_vm" {
  source          = "../../modules/windows-vm"
  vm_name         = "dev-winvm"
  resource_group  = "dev-rg"
  location        = "eastus"
  vm_size         = "Standard_DS2_v2"
  admin_username  = "winadmin"
  admin_password  = "SecurePassw0rd!"
  nic_id          = module.network.subnet_ids[0] # Example: attach to first subnet
  windows_sku     = "2019-Datacenter"
  environment     = "dev"
}
