# terraform {
#   required_providers {
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = ">= 1.19.0"
#     }
#     helm = {
#       source = "hashicorp/helm"
#       version = ">=2.9.0"
#     }
#   }
# }

# provider "aws" {
#   shared_config_files      = ["~/.aws/config"]
#   shared_credentials_files = ["~/.aws/credentials"]
#   profile                  = "default"
#   region = "us-east-1"
# }

# provider "helm" {
#   kubernetes {
#     config_path = var.kube_config
#   }
# }
# provider "kubernetes" {
#   config_path = var.kube_config
# }