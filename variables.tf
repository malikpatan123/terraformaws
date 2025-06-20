variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.0.0/20", "10.0.16.0/20"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.128.0/20", "10.0.144.0/20"]
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "project" {
  default = "project"
}

