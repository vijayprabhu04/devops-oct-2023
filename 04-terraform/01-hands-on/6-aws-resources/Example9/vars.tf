# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# virtual private network
variable my_vpc {
  default = {
    cidr = "172.32.0.0/16"
    subnet_cidr = "172.32.0.0/24"
    vpc_name = "practice_vpc"
    subnet_name = "practice-subnet"
  }
}

# Instance tags
variable my_instance {
  default = {
    myimage = "ami-0a9d27a9f4f5c0efc"
    mytag = "dev-instance"
  }
}