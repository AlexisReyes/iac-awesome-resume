# Input variable definitions for cloudfront module

variable "domain" {
  description = "Domain name for cloudfront distribution."
  type        = string
}

variable "bucket" {
  description = "S3 Bucket for cloudfront distribution."
  type        = string
}

variable "bucket_domain_name" {
  description = "S3 Bucket for cloudfront distribution."
  type        = string
}

variable "hosted_zone_id" {
  description = "Route 53 Hosted Zone for cloudfront distribution."
  type        = string
}

variable "tags" {
  description = "Tags for the generated cloudfront distribution."
  type        = map(string)
  default     = {
    Environment = "production"
    Terraform = "true"
  }
}