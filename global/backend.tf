 # This file is used to configure the backend for Terraform state storage. The backend is set to use Azure Resource Manager (azurerm) and specifies the resource group, storage account, container, and key for storing the Terraform state file. Make sure to replace the storage account name and container name with your own values.
 # Please change the resource group name, storage account name, and container name to your own values before using this configuration. The key specifies the name of the state file that will be stored in the specified container. 
 
 terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg" # change the resource group name to your own    
    storage_account_name = "tfstateaccount" # change the storage account name to your own   
    container_name       = "tfstate" # change the container name to your own    
    key                  = "terraform.tfstate" # this is the state file name, you can change it to your own 
  }
}
