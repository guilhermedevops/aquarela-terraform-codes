output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config[0].host
}
