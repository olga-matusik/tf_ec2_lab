resource "aws_security_group" "security_group" {
  name        = "security_group"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["89.246.68.120/32"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["89.246.68.120/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Security-Group-Terraform"
  }
}

data "aws_vpc" "vpc" {
  id = "vpc-0764569707d727ec2"
}