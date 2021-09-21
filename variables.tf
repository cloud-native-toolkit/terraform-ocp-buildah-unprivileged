variable "cluster_config_file" {
  type        = string
  description = "Cluster config file for Kubernetes cluster."
}

variable "namespace" {
  type        = string
  description = "A description of my variable"
  default     = "default"
}

