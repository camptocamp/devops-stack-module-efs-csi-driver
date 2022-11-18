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
  type = string
}
