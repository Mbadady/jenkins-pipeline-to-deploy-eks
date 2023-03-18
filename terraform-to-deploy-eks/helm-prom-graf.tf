resource "helm_release" "kube-prometheus" {
  name       = "helm-chart"
  # chart       = "helm-chart"
  namespace  = var.namespace
  version    = var.kube-version
  chart      =    "./kubernetes/helm-chart"
  set_string  = {
    "global.rbac.enabled" = "true"
  }

   set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "grafana" {
  chart      = "grafana"
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  namespace  = var.namespace
  version    = "10.2.7"
   values     = [
    <<VALUES
    persistence:
      enabled: true
    adminPassword: "admin"
    VALUES
  ]
   set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}