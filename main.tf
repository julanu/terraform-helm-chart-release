resource "kubernetes_namespace" "main" {
  metadata {
    name = var.chart_namespace
  }
}

resource "helm_release" "main" {
  name       = var.release_name
  repository = var.chart_url
  chart      = var.chart_name
  version    = var.chart_version
  namespace  = kubernetes_namespace.main.metadata.0.name
  values = [
    "${file(var.values_file_path)}"
  ]

}
