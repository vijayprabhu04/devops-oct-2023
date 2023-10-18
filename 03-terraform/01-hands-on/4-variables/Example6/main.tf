resource "aws_instance" "ec2_instance" {
    ami = "ami-0fed77069cd5a6d6c"
    instance_type = var.instance_type
}