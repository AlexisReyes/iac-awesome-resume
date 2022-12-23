terraform {
  backend "s3" {
    bucket         = "tf-backend-my-awesome-iac"
    key            = "states/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = "true"
    region         = "us-west-1"
  }
}
