locals {
  bin_dir = module.setup_clis.bin_dir
}

module setup_clis {
  source = "github.com/cloud-native-toolkit/terraform-util-clis.git"

  clis = ["helm"]
}

resource null_resource deploy_helm {
  provisioner "local-exec" {
    command = "${path.module}/scripts/helm-apply.sh '${var.namespace}'"

    environment = {
      KUBECONFIG = var.cluster_config_file
      BIN_DIR    = local.bin_dir
    }
  }
}
