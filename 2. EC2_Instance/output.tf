# Define output values
# Attribute Reference: EC2 Instance Public IP
output "ec2_instance_publicip" {
    description = "To know the Publicip address of the EC2"
    value = aws_instance.Webserver.public_ip
  }
output "ec2_instance_privateip"{
    description = "to know the private ip"
    value = aws_instance.Webserver.private_ip
}

output "aws_security_gruops" {
    description = "to kknow the security groups values"
    value = aws_instance.Webserver.security_groups
    sensitive = false
 }




















