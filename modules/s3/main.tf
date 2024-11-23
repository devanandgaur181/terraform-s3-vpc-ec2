provider "aws" {
  region = "us-west-2"  # Set region to the correct region for the S3 bucket
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

}
