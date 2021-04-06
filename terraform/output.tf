# output "common" {
#   value = "${module.vpc.common}"
# }

# output "vpc" {
#   value = "${module.vpc.vpc}"
# }

# output "rds" {
#   value = "${module.db.rds}"
# }

output "s3" {
  value = "${module.storage.s3}"
}
