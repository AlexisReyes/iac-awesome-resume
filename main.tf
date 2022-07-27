# Root module for provisioning infrastructure for my-awesome-resume project

terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23"
    }
  }
}

provider "aws" {
  region  = var.region
}

module "backend" {
  source         = "github.com/samstav/terraform-aws-backend"
  backend_bucket = var.backend_bucket_name
}

module "dns" {
  source = "./dns"
}
