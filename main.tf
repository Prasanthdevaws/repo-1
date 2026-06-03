resource "aws_s3_bucket" "example" {
  bucket = "my-secure-data-bucket"
}

resource "aws_s3_bucket_public_access_block" "example_block" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
New line added - new lines-merge
