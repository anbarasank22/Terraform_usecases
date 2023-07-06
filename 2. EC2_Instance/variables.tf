# Input Variables

variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-1"
  }

variable "ec2_instance_type" {
  description = "Ec2 instance type"
  type = string
  default = "t2.micro" 
}

variable "ec2_instance_count" {
  description = "Ec2 instance count"
  type = number
  default = 5
}

variable "ec2_ami_id" {
  description = "Linux AMI ID"
  type = string  
  default = "ami-0b9ecf71fe947bbdd"
}