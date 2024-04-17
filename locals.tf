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
        resources = {
          requests = { for k, v in var.resources.controller.requests : k => v if v != null }
          limits   = { for k, v in var.resources.controller.limits : k => v if v != null }
        }
      }
      node = {
        resources = {
          requests = { for k, v in var.resources.node.requests : k => v if v != null }
          limits   = { for k, v in var.resources.node.limits : k => v if v != null }
        }
      }
    }
  }]
}
