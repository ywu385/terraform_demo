# main

provider "aws" {
region = terraform.workspace == "default" ? "us-east-1" : "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "wu-john-cscie90"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}