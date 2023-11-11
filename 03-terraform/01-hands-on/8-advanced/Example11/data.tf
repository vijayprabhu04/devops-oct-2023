data "aws_availability_zones" "west" {
  state = "available"
}

data "aws_security_group" "sgroup" {
  filter {
    name   = "tag:name"
    values = ["dev"]
    }
}