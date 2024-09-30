variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix used for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM instances in the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the AKS cluster is created"
  type        = string
}

variable "location" {
  description = "Location of the AKS cluster"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which the AKS cluster is deployed"
  type        = string
}

variable "api_server_authorized_ip_ranges" {
  description = "A list of IP ranges that are allowed to access the AKS API server"
  type        = list(string)
  default     = []
}
