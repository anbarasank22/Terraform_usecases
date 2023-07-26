
# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  key_name      = "terraform_south"
  count = terraform.workspace == "default" ? 4 : 2 # logic here is if my workspace is equal to default then create 2 EC2 or else 1 EC2
	user_data = file("apache-install.sh")  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "Web-${terraform.workspace}-${count.index}"
  }
}