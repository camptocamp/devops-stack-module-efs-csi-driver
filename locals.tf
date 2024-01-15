locals {
  helm_values = [{
    "aws-efs-csi-driver" = {
      storageClasses = [{
        name = "efs"
        parameters = {
          provisioningMode = "efs-ap"
          fileSystemId     = var.efs_file_system_id
          directoryPerms   = "700"
        }
      }]
      controller = {
        serviceAccount = {
          annotations = {
            "eks.amazonaws.com/role-arn" = var.iam_role_arn != null ? var.iam_role_arn : module.iam_assumable_role_efs.iam_role_arn
          }
        }
      }
    }
  }]
}
