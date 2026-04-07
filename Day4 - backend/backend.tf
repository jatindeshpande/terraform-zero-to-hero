terraform {

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.0"
    }
  }

  

  backend "s3" {
  bucket       = "destination-bucket-batch-operation"
  key          = "state/terraform.tfstate"
  region       = "us-east-2"
  encrypt      = true
  use_lockfile = true   # Native S3 locking — no DynamoDB required (AWS provider v5+)
}
}

provider "aws" {
  region = "us-east-2"
}
