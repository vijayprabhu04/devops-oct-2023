provider "aws" {
    access_key = "xxxxxx"
    secret_key = "xxxxxx"
    region     = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-0c1a7f89451184c8b"
    instance_type = "t2.micro"
    tags = {Name = "HTTPS SERVER"}
}