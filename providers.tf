terraform {
  required_providers {
    azurerm = {
        source = "hashicor/azurerm"
        version = "~>5.0"
    }
  }
}

provider "azurerm" {
  features{}
}