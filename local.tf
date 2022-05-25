locals {
  helm_values = {
    "aws-efs-csi-driver" = {
      nameOverride = var.name
      storageClasses = [{
        name = "efs"
        parameters = {
          provisioningMode = "efs-ap"
          fileSystemId = var.efs_file_system_id
          directoryPerms = "700"
        }
      }]
    }
  }
}
