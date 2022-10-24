data "aws_ami" "ami_name" {
  owners      = [var.ami_owner_id] #ami owner
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

data "aws_vpc" "my_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "my_public_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}