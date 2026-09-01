variable "subscription" {
  type = number
  description = "subscription value"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
  default     = "dev-rg"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, staging, prod)"
  default     = "dev"
  
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod"
  }
}