terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

#Provider profile and region in which all the resources will create
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

#Resource to create s3 bucket
resource "aws_s3_bucket" "demo-bucket"{
  bucket = "ck-demo-reeds"

  tags = {
    Name = "S3Bucket"
  }
}

resource "aws_s3_bucket" "ck-demo-reeds-crossing"{
  bucket = "ck-demo-reeds-crossing"

  tags = {
    Name = "S3Bucket"
  }
}

resource "aws_s3_bucket" "ck-demo-reeds-crossing1"{
  bucket = "ck-demo-reeds-crossing1"

  tags = {
    Name = "reeds"
  }
}

resource "aws_s3_bucket" "ck-demo-tamarack-elementary"{
  bucket = "ck-demo-tamarack-elementary"

  tags = {
    Name = "tamarack"
  }
}
