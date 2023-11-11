terraform {
  backend "s3" {
    bucket = "xxxxxxxx"
    key    = "production/prod.tfstate"
    region = "ap-south-1"
    }
}