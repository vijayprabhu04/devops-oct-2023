# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# Image
variable instance_data {
  default = {
    count = "2"
    ami = "ami-052c08d70def0ac62"
    type = "t2.micro"
  }
}