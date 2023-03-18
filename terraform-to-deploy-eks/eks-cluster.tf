

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"
  cluster_name    = "my-cluster"
  cluster_version = "1.24"
  cluster_endpoint_public_access  = true
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  eks_managed_node_groups = {
    dev = {
      min_size     = 2
      max_size     = 3
      desired_size = 3

      instance_types = ["t3.medium"]
    }
  }
}