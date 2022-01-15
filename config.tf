terraform {

  required_version = "1.0.9"

  backend "s3" {
    encrypt = true
    bucket  = "s3-835158247870-terraform-persistence"
    key     = ".terraform/terraform.tfstate/terraform-emr-pyspark.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}
