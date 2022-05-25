variable "name" {
	type = string

	default = "efs-csi-driver"
}

variable "source_repository_url" {
	type = string

	default = "https://github.com/camptocamp/devops-stack-module-efs-csi-driver.git"
}

variable "source_target_revision" {
	type = string

	default = "main"
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
