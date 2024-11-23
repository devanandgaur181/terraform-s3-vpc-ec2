provider "aws" {
  region = "us-west-2"  # Set the region to us-west-2
}

module "vpc" {
  source            = "./modules/vpc"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "devabhaiiii56"  # Ensure this name is unique globally
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-04dd23e62ed049936"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  instance_name = "MyEC2Instance"
}
