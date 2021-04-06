# S3
resource "aws_s3_bucket" "training-bucket" {
  bucket = "demo-${lookup(var.common, "${terraform.env}.project", var.common["default.project"])}"
  acl    = "private"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST", "DELETE", "GET"]
    allowed_origins = ["*"]
  }

  policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "AllowPublicRead",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::demo-${lookup(var.common, "${terraform.env}.project", var.common["default.project"])}/*"
    }
  ]
}
POLICY
}