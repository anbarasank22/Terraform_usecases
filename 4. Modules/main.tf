# AWS EC2 Instance Module

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  

  ami                    = var.ec2_ami_id
  instance_type          = var.ec2_instance_type
  key_name               = "terraform_south"
  monitoring             = true
  vpc_security_group_ids = ["sg-03e7b13346aa5c429"]
  subnet_id              = "subnet-0a95bfb0cd7062996"

  tags = {
    Name        = "Modules-DemoServer"
    Terraform   = "true"
    Environment = "dev"
  }

}