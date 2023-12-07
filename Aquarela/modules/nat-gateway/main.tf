provider "azurerm" {
  features = {}
}

variable "vnet_name" {
  description = "Name of the VNET"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

resource "azurerm_public_ip" "nat_gateway" {
  name                = "nat-gateway-ip"
  resource_group_name = "kubernetes-cluster"
  location            = "East US"
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_nat_gateway" "nat_gateway" {
  name                = "nat-gateway"
  location            = "East US"
  resource_group_name = "kubernetes-cluster"

  public_ip_addresses_ids = [azurerm_public_ip.nat_gateway.id]

  sku {
    name     = "Standard"
    tier     = "Standard"
    capacity = 1
  }
}

output "nat_gateway_name" {
  value = azurerm_nat_gateway.nat_gateway.name
}
