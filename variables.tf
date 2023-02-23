variable "name" {
  type = string

  default = "efs-csi-driver"
}

variable "source_repository_url" {
  type = string

  default = "https://github.com/camptocamp/devops-stack-module-efs-csi-driver.git"
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v1.0.0-alpha.1" # x-release-please-version
}
variable "destination_namespace" {
  type = string

  default = "efs-csi-driver"
}

variable "helm_values_overrides" {
  type = any

  default = {}
}

variable "argocd_namespace" {
  type = string
}

variable "efs_file_system_id" {
  type        = string
  description = "EFS Filesystem ID to use by the CSI driver to create volumes"
}

variable "iam_role_arn" {
  type        = string
  default     = ""
  description = "ARN of an OIDC assumable IAM role that has access to the EFS filesystem (optional). When specified, this is added as an annotation to the EFS CSI driver controller ServiceAccount, to allow the driver to manage EFS access points for dynamic volumes provisioning."
}
