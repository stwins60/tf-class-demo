module "s3_bucket" {
  source = "./modules/s3"
  environment = var.environment
  bucket_names = var.bucket_names
}