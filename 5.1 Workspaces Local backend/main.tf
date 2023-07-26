# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  key_name      = "terraform_south"
  count = terraform.workspace == "default" ? 2 : 1    
	user_data = file("apache-install.sh")  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "Web-${terraform.workspace}-${count.index}"
  }
}