terraform {
  required_version = ">= 0.11.0"

  backend "s3" {
    bucket  = "aws-training"
    encrypt = true
    key     = "terraform/terraform.tfstate"
    region  = "us-west-2"
    profile = "training-dev"
  }
}
