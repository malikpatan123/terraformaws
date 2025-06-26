# modules/vpc/variables.tf

variable "name" {
  description = "Name prefix for the VPC and subnets"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "vpc_id" {}


