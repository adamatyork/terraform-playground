resource "aws_s3_bucket" "adam_test_bucket" {
  bucket   = "adam-test-bucket"
}

resource "aws_s3_bucket_ownership_controls" "adam_test_bucket" {
  bucket   = aws_s3_bucket.adam_test_bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}