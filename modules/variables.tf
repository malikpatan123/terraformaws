variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "policy_arn" {
  description = "IAM policy ARN to attach"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

