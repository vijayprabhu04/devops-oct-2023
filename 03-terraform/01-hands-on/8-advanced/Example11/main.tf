resource "aws_instance" "web" {
  ami                    = "ami-07dfed28fcf95241c"
  availability_zone      = data.aws_availability_zones.west.names[0]
  vpc_security_group_ids = [data.aws_security_group.sgroup.id]
  instance_type          = "t2.micro"
  tags = {
    Name = "data_instance"
  }
}