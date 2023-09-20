# Create vpc :
resource "aws_vpc" "myvpc" {
  cidr_block = var.my_vpc.cidr
  tags = {
    Name = var.my_vpc.vpc_name
  }
}

# Create dedicated Subnet for your vpc :
resource "aws_subnet" "mysubnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.my_vpc.subnet_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1a"
  tags = {
    Name = var.my_vpc.subnet_name
  }
}

# Create instance :
resource "aws_instance" "myec2" {
  ami = var.my_instance.myimage
  instance_type = "t2.micro"
  subnet_id = aws_subnet.mysubnet.id
  tags = {
    Name = var.my_instance.mytag
  }
}
