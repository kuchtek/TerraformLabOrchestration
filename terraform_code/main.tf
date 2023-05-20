terraform {
  required_version = "v1.4.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket = "terraform-markuc"
    key    = "network/terraform.tfstate"
    region = var.region
  }
}

provider "aws" {
  region = var.region
}