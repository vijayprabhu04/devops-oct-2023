# Create new security group :
resource "aws_security_group" "sandbox_sg" {
    name = "sandbox security group"
    vpc_id = var.vpc.id

    ingress {
        description = "inbound"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.vpc.cidr]
    }

    egress {
        description = "outbound"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = [var.vpc.cidr]
    }
    
    tags = {
        sg_name = "sandbox-security-group"
    }

}

# Create EC2 instance
resource "aws_instance" "ec2_instance" {
    ami = "ami-03f65b8614a860c29"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sandbox_sg.id]
    tags = {Name = "HTTP_SERVER"}
    key_name = "training"
    count = 2
}