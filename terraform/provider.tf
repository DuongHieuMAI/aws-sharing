provider "aws" {
  profile = "${lookup(var.common, "default.project")}-${terraform.env}"
  region  = "${lookup(var.common, "${terraform.env}.region", var.common["default.region"])}"
  version = "~> 2.48.0"
  alias   = "customer"
}
