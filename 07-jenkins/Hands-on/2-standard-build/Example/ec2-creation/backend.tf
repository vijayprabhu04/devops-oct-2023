terraform {
  backend "s3" {
    bucket = "xxxxxxxxxx"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    }
}