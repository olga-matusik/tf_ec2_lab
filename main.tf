data "aws_ami" "ami_name" {
  owners      = [var.ami_owner_id] #ami owner
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

data "aws_subnet" "selected_subnet" {
  id        = var.pub_subnet_id
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
}