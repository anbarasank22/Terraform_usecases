# Create EC2 Instance - Amazon Linux
# terraform plan -var-file="dev.tfvars"
# terraform plan -var-file="prod.tfvars"

resource "aws_instance" "Webserver" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  count         = var.ec2_instance_count
  key_name      = "webserver_HYD"
  user_data = file("httpd_install.sh")  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "Linux-Webserver - ${count.index}"
  }
}
