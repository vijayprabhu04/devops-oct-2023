resource "aws_instance" "ec2_instance" {
    ami = var.AMI
    instance_type = var.machine_type
}