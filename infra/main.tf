# Dave bucket with Versioning disabled
resource "aws_s3_bucket" "dave" {
  bucket = "dave-s8fh43"
}

resource "aws_s3_bucket_versioning" "dave_versioning" {
  bucket = aws_s3_bucket.dave.id
  versioning_configuration {
    status = "Disabled"
  }
}

# Wizards bucket with Versioning Enabled
resource "aws_s3_bucket" "wizards" {
  bucket = "wizards-s8fh43"
}

resource "aws_s3_bucket_versioning" "wizards_versioning" {
  bucket = aws_s3_bucket.wizards.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Cloudfront Logs bucket with Versioning Disabled
resource "aws_s3_bucket" "cloudfront_logs" {
  bucket = "cloudfront-logs-s8fh43"
}

resource "aws_s3_bucket_versioning" "cloudfront_logs_versioning" {
  bucket = aws_s3_bucket.cloudfront_logs.id
  versioning_configuration {
    status = "Disabled"
  }
}

# Cloudfront bucket policy providing access to sample CF distro in my AWS account
resource "aws_s3_bucket_policy" "cloudfront_logs_policy" {
  bucket = aws_s3_bucket.cloudfront_logs.id
  policy = file("cloudfront_logs_policy.json")
}

