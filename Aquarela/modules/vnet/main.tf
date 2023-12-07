provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "main" {
  name     = "MC_${var.resource_group_name}_${var.cluster_name}_${var.environment}"
  location = "East US"
}

resource "azurerm_virtual_network" "aks_vnet" {
  name                = "aks-vnet-15517186"
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.224.0.0/12"]

  subnet {
    name           = "aks-subnet"
    address_prefix = "10.224.0.0/16"
  }
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.224.0.0/16"]
}

output "aks_vnet_name" {
  value = azurerm_virtual_network.aks_vnet.name
}
