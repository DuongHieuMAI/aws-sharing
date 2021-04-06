# module "vpc" {
#   source = "../../modules/vpc"
#   common = "${var.common}"
#   vpc    = "${var.vpc}"
#   ecs    = "${var.ecs}"
# }

# module "db" {
#   source   = "../../modules/db"
#   common   = "${var.common}"
#   rds      = "${var.rds}"
#   psql_rds = "${var.psql_rds}"
#   # docdb    = "${var.docdb}"
#   dynamodb = "${var.dynamodb}"  
#   vpc      = "${module.vpc.vpc}"
# }

module "storage" {
  source = "./modules/storage"
  common = "${var.common}"
  providers = {
    aws = "aws.customer"
  }
}

