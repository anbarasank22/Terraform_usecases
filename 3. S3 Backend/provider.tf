# Terraform settings block 
terraform {
  required_version = "~>1.4.6"
  required_providers {
    aws = {
     source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

# Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "s3backend06july23"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1" 

    # For State Locking
    dynamodb_table = "dev-usecase1"    
  }    
}

# Provider block 
provider "aws" {
region = var.aws_region
profile = "default"  
}