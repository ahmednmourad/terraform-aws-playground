terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-state-bucket-778858665906"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-remote-state-dynamo"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

