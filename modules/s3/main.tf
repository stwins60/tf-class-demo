resource "aws_s3_bucket" "demo" {
  for_each = var.bucket_names
  bucket   = each.value.bucket_name
}


resource "aws_s3_bucket_public_access_block" "block_public_acces" {
  for_each = {
    for k, v in var.bucket_names : k => v
    if v.obj_create_resource != false
  }
  bucket   = aws_s3_bucket.demo[each.key].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_object" "obj" {
  for_each = {
    for k, v in var.bucket_names : k => v
    if v.obj_create_resource != false
  }
  bucket   = aws_s3_bucket.demo[each.key].id
  key      = each.value.obj_key
  source   = each.value.obj_source

  depends_on = [aws_s3_bucket.demo]
}


