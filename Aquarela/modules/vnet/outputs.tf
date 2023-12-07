output "aks_vnet_name" {
  value = azurerm_virtual_network.aks_vnet.name
}

output "aks_subnet_name" {
  value = azurerm_subnet.aks_subnet.name
}
