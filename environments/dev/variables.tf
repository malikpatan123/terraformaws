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

