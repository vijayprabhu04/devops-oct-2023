resource "aws_instance" "http_ec2" {
    ami = "ami-07dfed28fcf95241c"
    instance_type = "t2.micro"
    tags = {Name = "HTTP_SERVER"}
    vpc_security_group_ids = ["sg-02fbcfc4e3eba3f54"]
    key_name = "main"

provisioner "remote-exec" {
   inline = ["sudo yum install httpd -y", "sudo service httpd start", "mkdir -p /tmp/devops"]
}

connection {
  host = self.public_ip
  user = var.login_user
  private_key = file("main.pem")    
    }
}
