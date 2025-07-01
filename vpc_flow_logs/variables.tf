variable "vpc_id" {
  description = "The VPC ID to monitor"
  type        = string
}

variable "s3_bucket_arn" {
  description = "The ARN of the destination S3 bucket"
  type        = string
}

variable "traffic_type" {
  description = "Type of traffic to log: ACCEPT, REJECT or ALL"
  type        = string
  default     = "ALL"
}

