#######################
## Standard variables
#######################

variable "cluster_name" {
  description = "Name given to the cluster. Value used for naming some the resources created by the module."
  type        = string
  default     = "cluster"
}

variable "argocd_project" {
  description = "Name of the Argo CD AppProject where the Application should be created. If not set, the Application will be created in a new AppProject only for this Application."
  type        = string
  default     = null
}

variable "argocd_labels" {
  description = "Labels to attach to the Argo CD Application resource."
  type        = map(string)
  default     = {}
}

variable "destination_cluster" {
  description = "Destination cluster where the application should be deployed."
  type        = string
  default     = "in-cluster"
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v3.1.0" # x-release-please-version
}

variable "helm_values" {
  description = "Helm chart value overrides. They should be passed as a list of HCL structures."
  type        = any
  default     = []
}

variable "app_autosync" {
  description = "Automated sync options for the Argo CD Application resource."
  type = object({
    allow_empty = optional(bool)
    prune       = optional(bool)
    self_heal   = optional(bool)
  })
  default = {
    allow_empty = false
    prune       = true
    self_heal   = true
  }
}

variable "dependency_ids" {
  description = "IDs of the other modules on which this module depends on."
  type        = map(string)
  default     = {}
}

#######################
## Module variables
#######################

variable "efs_file_system_id" {
  description = "EFS Filesystem ID to use by the CSI driver to create volumes."
  type        = string
}

variable "create_role" {
  description = "Boolean to indicate that the OIDC assumable IAM role should be created. **If passing `iam_role_arn` this should be false, otherwise if you want to create the OIDC assumable IAM role provided by this module, you will need to specify the variable `cluster_oidc_issuer_url`.**"
  type        = bool
}

variable "iam_role_arn" {
  description = "ARN of an OIDC assumable IAM role that has access to the EFS filesystem. When specified, this is added as an annotation to the EFS CSI driver controller ServiceAccount, to allow the driver to manage EFS access points for dynamic volumes provisioning."
  type        = string
  default     = null
}

variable "cluster_oidc_issuer_url" {
  description = "Cluster OIDC issuer URL used to create the OIDC assumable IAM role. This variable is required to create a IAM role if you set `create_role` as true."
  type        = string
  default     = "" # Use empty string instead of null because of the replace() that uses this variable.
}
