resource "aws_instance" "ec2" {
  ami               = data.aws_ami.ami_name.id
  instance_type     = var.instance_type
  subnet_id         = data.aws_subnet.my_public_subnet.id
  key_name          = var.keypair_name
  security_groups   = [aws_security_group.security_group_1.id]

  tags = {
    Name = "ec2-terraform"
  }
}