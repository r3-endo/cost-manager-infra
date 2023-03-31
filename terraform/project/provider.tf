terraform {
  required_version = "~> 1.4.4"

  backend "s3" {
    bucket         = "cost-manager-tf-state-bucket"
    region         = "ap-northeast-1"
    key            = "common-github.tfstate"
    dynamodb_table = "cost-manager-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.47.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      project = var.tags["project"]
      owner   = "terraform"
    }
  }
}