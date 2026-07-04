terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
     features {}

  resource_provider_registrations = "none"
  subscription_id   = var.subscription
  client_id         = var.clientid
  client_secret     = var.secret
  tenant_id         = var.tenantid
  
}

# Create a resource group
resource "azurerm_resource_group" "RG3" {
  name     = var.rgname
  location = var.rglocation
}