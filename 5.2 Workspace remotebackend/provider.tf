# Terraform settings block

terraform {
  required_version = "~>1.4.6"
  required_providers {
    aws = {
     source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
 
 # Adding backend as a S3 for remote state storage
 backend "s3" {
  bucket = "remotebackend-workspace"
  key = "workspace/terraform.tfstate"
  region = "ap-south-1"
 
#For State Locking
  #dynamodb_table = "pilotrightangle-prod-bucket" 

    }

  }

# Provider block 
provider "aws" {
region = var.aws_region
profile = "default"  
}



