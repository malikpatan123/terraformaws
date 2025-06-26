# environments/dev/main.tf
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source              = "../../modules/vpc"
  name                = "demovpc"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  azs                 = ["ap-south-1a", "ap-south-1b"]
}
