provider "aws" {
    access_key = "xxxxx"
    secret_key = "xxxxx"
    region     = "ap-south-1"
}

resource "aws_instance" "sample_machine" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
}
