data "aws_availability_zones" "azs" {}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.cidr_block
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  azs = data.aws_availability_zones.azs.names

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}