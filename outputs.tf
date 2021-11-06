
output "namespace" {
  value = var.namespace
  depends_on = [null_resource.deploy_helm]
}
