# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# Image IDs
variable "AMI" {
  type        = map
  default     = {
    ap-south-1 = "ami-0a9d27a9f4f5c0efc"
    us-east-2  = "ami-0a54aef4ef3b5f881"
  }
}

# SSH_USER
variable "login_user" {
  default = "ubuntu"
}

