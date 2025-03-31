terraform {
  backend "s3" {
    bucket         = "my-tf-us-east-2-state-file"
    region         = "us-east-2"
    key            = "s3-github-actions/terraform.tfstate"
    dynamodb_table = "my-table-us-east-2-dynamodb"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}
