variable "release_name" {
  type        = string
  description = "The name of your Helm release."
}

variable "chart_url" {
  type        = string
  description = "The URL for the Helm chart installation."
}

variable "chart_name" {
  type        = string
  description = "The name of the chart you want to install."
}

variable "chart_version" {
  type        = string
  description = "The version of the Helm chart to be installed."
}

variable "values_file_path" {
  type        = string
  description = "The path to your Helm chart values file."
}

variable "chart_namespace" {
  type        = string
  description = "The namespace for the Helm release installation."
}

variable "resource_group" {
  type        = string
  description = "The name of the Azure Resource Group where resources will be deployed."
  sensitive   = true
}

variable "aks_cluster_name" {
  type        = string
  description = "The name of the AKS cluster."
}

variable "tenant_id" {
  type        = string
  description = "The Azure Tenant ID for authentication."
}

variable "client_secret" {
  type        = string
  description = "The client secret for Azure authentication."
}

variable "client_id" {
  type        = string
  description = "The client ID for Azure authentication."
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID."
}
