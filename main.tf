# define aws region replace it with your region

variable "region" {
  default = "eu-north-1"
}

# aws provider block

provider "aws" {
  region = var.region
}

# S3 static website bucket

/*resource "aws_s3_bucket" "my-static-website" {
  bucket = "my-static-website4655111" # give a unique bucket name
  tags = {
    Name = "my-static-website"
  }
}

# Upload the HTML file to the S3 bucket
resource "aws_s3_bucket_object" "example_object" {
  bucket = aws_s3_bucket.my-static-website.id
  key = "index.html"
  source = "./index.html" # Ensure your HTML file is in the same directory
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "example1_object" {
  bucket = aws_s3_bucket.my-static-website.id
  key = "rishikonda-beach.jpg" # The key (object name) for your JPG file
  source = "./rishikonda-beach.jpg" # Path to the local JPG file
  content_type = "image/jpeg" # Specify the content type if needed
}

resource "aws_s3_bucket_object" "example2_object" {
  bucket = aws_s3_bucket.my-static-website.id
  key = "steel_plant.jpg" # The key (object name) for your JPG file
  source = "./steel_plant.jpg" # Path to the local JPG file
  content_type = "image/jpeg" # Specify the content type if needed
}

resource "aws_s3_bucket_website_configuration" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

resource "aws_s3_bucket_versioning" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id
  versioning_configuration {
    status = "Enabled"
  }
}

# S3 bucket ACL access

resource "aws_s3_bucket_ownership_controls" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

# **Last resource**

resource "aws_s3_bucket_policy" "bucket1-policy" {
  bucket = aws_s3_bucket.my-static-website.id

  policy = <<POLICY
{
  "Id": "Policy",
  "Statement": [
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.my-static-website.bucket}/*",
      "Principal": {
        "AWS": [
          "*"
        ]
      }
    }
  ]
}
POLICY
}




# s3 static website url

output "website_url" {
  value = "http://${aws_s3_bucket.my-static-website.bucket}.s3-website.${var.region}.amazonaws.com"
}*/