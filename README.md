# Buildah unprivileged module

Module to configure a Red Hat OpenShift cluster to allow buildah to run unprivileged. (This is primarily necessary for IBM ROKS clusters.)

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v12
- kubectl

### Terraform providers

None

## Module dependencies

This module makes use of the output from other modules:

- Cluster - github.com/ibm-garage-cloud/terraform-ibm-container-platform.git
- Namespace - github.com/ibm-garage-clout/terraform-cluster-namespace.git

## Example usage

```hcl-terraform
module "buildah_unprivileged" {
  source = "https://github.com/cloud-native-toolkit/terraform-ocp-buildah-unprivileged.git"

  cluster_config_file = module.dev_cluster.config_file_path
  namespace = module.dev_capture_tools_state.namespace
}
```

