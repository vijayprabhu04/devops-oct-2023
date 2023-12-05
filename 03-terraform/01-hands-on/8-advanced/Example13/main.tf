# Create incremental instance:
resource "aws_instance" "apache_instance" {
  count         = var.instance_data.count
  ami           = var.instance_data.ami
  instance_type = var.instance_data.type
  tags = {
    Name  = "web_server_${count.index}"
  }
}