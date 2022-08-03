# Input variables for root module
variable "domain" {
  description = "Domain name for my awesome resume website"
  type        = string
  default     = "alexisreyes.xyz"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}

variable "backend_bucket_name" {
  description = "Name for the backend s3 bucket"
  type        = string
  default     = "tf-backend-my-awesome-iac"
}
