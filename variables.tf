variable "release_name" {
  type        = string
  description = "The name of your Helm release"
}

variable "chart_url" {
  type        = string
  description = "The URL for the Helm chart installation"
}

variable "chart_name" {
  type        = string
  description = "The name of the chart you want to install"
}

variable "chart_version" {
  type        = string
  description = "The version of the Helm chart to be installed"
}

variable "values_file_path" {
  type        = string
  description = "The path to your Helm chart values file"
}

variable "chart_namespace" {
  type        = string
  description = "Namespace for the Helm release to be installed in"
}

variable "resource_group" {
  description = "Azure Resource Group for resources"
  type        = string
  sensitive   = true
}

variable "aks_cluster_name" {
  description = "Name for the AKS cluster"
  type        = string
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "client_secret" {
  type = string
}

variable "client_id" {
  type = string
}

variable "subscription_id" {
  type = string
}