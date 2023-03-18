# resource "helm_release" "kube-prometheus" {
#   name       = "helm-chart"
#   # chart       = "helm-chart"
#   namespace  = var.namespace
#   version    = var.kube-version
#   chart      =    "kubernetes/helm-chart"

#    set {
#     name  = "service.type"
#     value = "LoadBalancer"
#   }
# }

# resource "helm_release" "grafana" {
#   chart      = "grafana"
#   name       = "grafana"
#   repository = "https://charts.bitnami.com/bitnami"
#   namespace  = var.namespace
#   # version    = "2.12.0"
#    values     = [
#     <<VALUES
#     persistence:
#       enabled: true
#     adminPassword: "admin"
#     VALUES
#   ]
#    set {
#     name  = "service.type"
#     value = "LoadBalancer"
#   }
# }