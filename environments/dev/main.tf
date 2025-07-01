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
/*
module "public_ec2" {
  source              = "../../modules/ec2"
  ami_id              = "ami-0f918f7e67a3323f0"  # Use valid AMI for ap-south-1
  instance_type       = "t2.micro"
  subnet_id           = "subnet-06aa9f891c2080d02"
  security_group_id   = module.vpc.demo_public_sg_id
  associate_public_ip = true
  name                = "public-server"
}
*/
/*
module "private_ec2" {
  source              = "../../modules/ec2"
  ami_id              = "ami-0f918f7e67a3323f0"
  instance_type       = "t2.micro"
  subnet_id           = "subnet-02b11ed43acb873c5"
  security_group_id   = module.vpc.demo_private_sg_id
  associate_public_ip = false
  key_name            = var.key_name
  name                = "private-server"
  iam_instance_profile   = module.iam_role.instance_profile_name
}
*/

module "iam_role" {
  source    = "../../modules/iam_role"
  role_name = "ec2-s3-access-role"
}

module "public_ec2" {
  source = "../../modules/ec2"

  name                   = "public-instance"   # 🔹 Use lowercase "name"
  ami_id                 = "ami-0f918f7e67a3323f0"
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.public_subnet_id
  security_group_id      = module.vpc.demo_public_sg_id
  associate_public_ip    = true
  key_name               = var.key_name
  iam_instance_profile   = module.iam_role.instance_profile_name

}
/*
module "vpc_flow_logs" {
  source         = "../../modules/vpc_flow_logs"
  vpc_id         = "vpc-07d30b640033b9c46"  # Specific VPC ID
  s3_bucket_arn  = "arn:aws:s3:::blackbucket-terraform-state"
  traffic_type   = "ALL"
  max_aggregation_interval = 60  # <-- this sets aggregation to 1 minute
}
*/
