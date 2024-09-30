output "aks_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "Kube config for accessing the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}
