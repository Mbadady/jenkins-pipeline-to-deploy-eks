variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "public_subnets" {
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "private_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# variable "kube_config" {
#   type    = string
#   default = "/home/ec2-user/.kube/config"
# }

# variable "namespace" {
#   type    = string
#   default = "monitoring"
# }
# variable "kube-version" {
#   type = string
#   default = "0.3.0"
# }