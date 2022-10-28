resource "argocd_project" "this" {
  metadata {
    name      = "efs-csi-driver"
    namespace = var.argocd_namespace
    annotations = {
      "devops-stack.io/argocd_namespace" = var.argocd_namespace
    }
  }

  spec {
    description  = "efs-csi-driver application project"
    source_repos = ["https://github.com/camptocamp/devops-stack-module-efs-csi-driver.git"]

    destination {
      name      = "in-cluster"
      namespace = var.destination_namespace
    }

    orphaned_resources {
      warn = true
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}

data "utils_deep_merge_yaml" "values" {
  input = [
    yamlencode(local.helm_values),
    yamlencode(var.helm_values_overrides)
  ]
}

resource "argocd_application" "this" {
  metadata {
    name      = "efs-csi-driver"
    namespace = var.argocd_namespace
  }

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = var.source_repository_url
      path            = "helm"
      target_revision = var.target_revision
      helm {
        values = data.utils_deep_merge_yaml.values.output
      }
    }

    destination {
      name      = "in-cluster"
      namespace = var.destination_namespace
    }

    sync_policy {
      automated = {
        prune     = true
        self_heal = true
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }
}
