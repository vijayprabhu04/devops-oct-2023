resource "aws_instance" "ec2_instance" {
    ami = var.image
    instance_type = "t2.micro"
    tags = {Name = "third-machine"}
}