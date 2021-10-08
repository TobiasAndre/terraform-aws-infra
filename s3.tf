resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  acl    = "private"

  tags = local.common_tags
}

# Faz upload de arquivo para o bucket
resource "aws_s3_bucket_object" "this" {
  bucket = aws_s3_bucket.this.bucket

  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)
}