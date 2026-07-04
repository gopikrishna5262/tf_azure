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

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Vnet3" {
  name                = "TFPractice"
  resource_group_name = azurerm_resource_group.RG2.name
  location            = azurerm_resource_group.RG2.location
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "subnet2"
  resource_group_name  = azurerm_resource_group.RG2.name
  virtual_network_name = azurerm_virtual_network.Vnet2.name
  address_prefixes     = ["10.10.1.0/24"]

}