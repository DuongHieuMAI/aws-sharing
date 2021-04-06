variable "common" {
  default = {
    default.tag     = "training"
    default.region  = "us-west-2"
    dev.region      = "us-west-2"
    stg.region      = "us-west-2"
    prd.region      = "ap-northeast-1"
    default.project = "training"
    dev.project     = "training-dev"
    stg.project     = ""
    prd.project     = ""
    default.credentials_file  = ""
  }
}

# # VPC
# variable "vpc" {
#   type = "map"

#   default = {
#     default.cidr             = "10.0.0.0/16"
#     dev.cidr                 = "10.0.0.0/16"
#     stg.cidr                 = "20.0.0.0/16"
#     prd.cidr                 = "30.0.0.0/16"
#     default.subnet-public-a  = "10.0.0.0/24"
#     default.subnet-public-c  = "10.0.1.0/24"
#     default.subnet-private-a = "10.0.2.0/24"
#     default.subnet-private-c = "10.0.3.0/24"
#     dev.subnet-public-a      = "10.0.0.0/24"
#     dev.subnet-public-c      = "10.0.1.0/24"
#     dev.subnet-private-a     = "10.0.2.0/24"
#     dev.subnet-private-c     = "10.0.3.0/24"
#     stg.subnet-public-a      = "20.0.0.0/24"
#     stg.subnet-public-c      = "20.0.1.0/24"
#     stg.subnet-private-a     = "20.0.2.0/24"
#     stg.subnet-private-c     = "20.0.3.0/24"
#     prd.subnet-public-a      = "30.0.0.0/24"
#     prd.subnet-public-c      = "30.0.1.0/24"
#     prd.subnet-private-a     = "30.0.2.0/24"
#     prd.subnet-private-c     = "30.0.3.0/24"
#   }
# }

# # RDS
# variable "rds" {
#   type = "map"

#   default = {
#     default.identifier                 = "demo-db"
#     default.cluster_identifier         = "demo-db-cluster"
#     default.storage_type               = "gp2"
#     default.allocated_storage          = 20
#     default.engine                     = "aurora-mysql"          # "aurora" for 5.6.10a
#     default.username                   = "root"
#     default.password                   = "aix~eim2Meik6g"
#     default.database_name              = "drone"
#     default.port                       = 3306
#     default.engine_version             = "5.7"                   # "5.6.10a" for aurora
#     default.instance_class             = "db.t2.small"
#     default.multi_az                   = false
#     default.backup_retention_period    = "7"
#     default.backup_window              = "19:00-19:30"
#     default.apply_immediately          = "true"
#     default.auto_minor_version_upgrade = false
#     default.final_snapshot_identifier  = "snapshot-demo-db"
#     default.skip_final_snapshot        = true
#     default.family                     = "mysql5.6"
#   }
# }

