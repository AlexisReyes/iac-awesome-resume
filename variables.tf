# Input variables for root module

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}

variable "backend_bucket_name" {
  description = "Name for the backend s3 bucket"
  type        = string
}
