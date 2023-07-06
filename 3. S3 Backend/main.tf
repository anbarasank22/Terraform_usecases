resource "aws_instance" "Webserver" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  count         = var.ec2_instance_count
  key_name      = "terraform_south"
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "Linux-Webserver - ${count.index}"
  }
}