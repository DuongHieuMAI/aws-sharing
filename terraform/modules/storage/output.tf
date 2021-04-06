output "s3" {
  value = "${
    map(
      "bucket", "${aws_s3_bucket.training-bucket.bucket}"
    )
  }"
}

output "common" {
  value = "${var.common}"
}
