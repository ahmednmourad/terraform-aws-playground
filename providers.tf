terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  # backend "s3" {
  #   bucket         = "<YOUR_S3_BUCKET_HERE>" # Replace this with your bucket name!
  #   key            = "global/s3/terraform.tfstate"
  #   region         = "us-east-2"
  #   dynamodb_table = "YOUR_DYNAMODB_TABLE_NAME_HERE" # Replace this with your DynamoDB table name!
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region
}

