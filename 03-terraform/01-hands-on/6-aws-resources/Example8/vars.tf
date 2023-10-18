# Region
variable AWS_REGION {
  default     = "us-west-2"
}

# VPC 
variable "vpc" {
  default = {
    id = "vpc-0b1564013b8666b6d"
    cidr = "0.0.0.0/0"
  }
}
