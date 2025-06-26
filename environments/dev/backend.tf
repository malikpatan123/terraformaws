# environments/dev/backend.tf
terraform {
  backend "s3" {
    bucket         = "demo-terraform-state"
    key            = "dev/vpc.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
