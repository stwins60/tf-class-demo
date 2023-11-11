output "bucket_ids" {
  value = [for key, bucket in aws_s3_bucket.demo : bucket.id]
}

output "bucket_urls" {
  value = [for key, bucket in aws_s3_bucket.demo : bucket.bucket_domain_name]
}