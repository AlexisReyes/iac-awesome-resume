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
  region = var.region
}

module "backend" {
  source         = "github.com/samstav/terraform-aws-backend"
  backend_bucket = var.backend_bucket_name
}

module "static_website" {
  source      = "./s3-static-website-bucket"
  bucket_name = var.domain
}

module "dns" {
  source = "./dns"
  domain = var.domain
}

module "cdn" {
  source             = "./cloudfront"
  domain             = var.domain
  hosted_zone_id     = module.dns.aws_route53_zone_id
  bucket             = module.static_website.name
  bucket_domain_name = module.static_website.bucket_domain_name
}
