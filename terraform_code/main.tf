terraform {
  required_version = "v1.4.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    key    = "network/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = var.current_region
}