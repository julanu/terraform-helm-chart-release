## Terraform Cloud Module: Helm Charts
This Terraform module provisions and manages the installation of any Helm chart on an Azure Kubernetes Service (AKS) cluster.

Prerequisites
Before using this module, make sure you have the following prerequisites:

- An existing Azure Resource Group where the resources will be deployed.
- An AKS cluster in your Azure subscription.
A- zure Tenant ID, Client ID, Client Secret, and Subscription ID for authentication.

### Usage
To use this module, include the following code in your Terraform configuration:

```terraform
module "aks-kyverno-chart" {
  source  = "app.terraform.io/my-org/chart-release/helm"
  version = "0.0.1"

  resource_group   = var.resource_group
  aks_cluster_name = var.aks_cluster_name
  tenant_id        = var.tenant_id
  client_id        = var.client_id
  client_secret    = var.client_secret
  subscription_id  = var.subscription_id

  chart_version   = "1.0.0-chart"
  chart_name      = "chart"
  chart_url       = "https://chart.github.io/chart/"
  chart_namespace = "chart"

  release_name     = "myrelease"
  values_file_path = "/absolute/path/to/your/values-file.yaml"
}
```
Make sure to replace the variable values with the appropriate values specific to your environment.
The module does not have any outputs.

