variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_id" {}
variable "associate_public_ip" {
  type    = bool
  default = false
}
variable "name" {}
variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile name"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Assign public IP to instance"
  type        = bool
  default     = true
}

