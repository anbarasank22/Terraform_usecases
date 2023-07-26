# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-1"
}

variable "ec2_ami_id" {
  description = "AMI id"
  type = string
  default = "ami-0d13e3e640877b0b9"
}

variable "ec2_instance_type" {
  description = "Instance type"
  type = string
  default = "t2.micro"
}

