provider "azurerm" {
  features = {}
}

variable "vnet_name" {
  description = "Name of the VNET"
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "kubernetes-cluster-aquarela"
  location            = "East US"
  resource_group_name = "kubernetes-cluster"

  dns_prefix                      = var.dns_prefix
  kubernetes_version              = var.kubernetes_version
  node_resource_group            = var.node_resource_group
  private_cluster_enabled         = false
  network_profile {
    network_plugin   = "azure"
    service_cidr     = "10.2.0.0/16"
    dns_service_ip   = "10.2.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }
  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  depends_on = [module.vnet]
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}
