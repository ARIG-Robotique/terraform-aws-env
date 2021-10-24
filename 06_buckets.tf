# Bucket pour le storage des artefacts Maven
resource "aws_s3_bucket" "artefacts" {
  bucket = "arig-artefacts"
  acl    = "public-read"
}

resource "aws_s3_bucket_public_access_block" "artefacts" {
  bucket = aws_s3_bucket.artefacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
