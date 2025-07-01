resource "aws_s3_bucket_policy" "allow_ec2_s3_read" {
  bucket = aws_s3_bucket.blackbucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid = "AllowEC2RoleAccessToS3",
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::795591862471:role/ec2-s3-access-role"
        },
        Action = "s3:GetObject",
        Resource = "arn:aws:s3:::blackbucket-terraform-state/*"
      }
    ]
  })
}

