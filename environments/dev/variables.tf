variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "public_subnet_id" {
  description = "Public subnet ID for EC2"
  type        = string
}

variable "key_name" {
  description = "Key pair name for EC2 login"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

