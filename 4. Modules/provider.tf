# Terraform settings block 
terraform {
  #required_version = "~>1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.66"
    }
  }
}

# Provider block 
provider "aws" {
region = var.aws_region
profile = "default"  

}
