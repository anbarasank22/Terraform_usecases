#! /bin/bash 
sudo yum update -y 
sudo yum install httpd -y
sudo yum install git -y
sudo systemctl enable httpd
sudo service httpd start
echo "<h1>Welcome to Terraform world</h1>" | sudo tee /var/www/html/index.html