resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/zxvw7lVM543E6XcNd1EXZhE3DPrvfpQtFjlarV4vN50GN5aUlDvinA/RpOZJ4G72IA60y7B/OdLxVkAhE16LFNuRTy/hPFSG6KibRmBVluIKQvaVgJnmTlZPcIyAchgN7hENqMkDVNPsd6lf3WyQj9BzhGe8atXiaWlPvJli7P9KYOSTj//QKeHsf43gjywCGUbLNMtXCJ+Naggd1QKQ7OCqq+h/Z4bjzfYIkYMwgMMJJQGHBYQz4FxODB+UOkc+iOp4rJwj3DMfEbBhHVm/CHbzTYXSW/45tVw2npkf6dP8T7Sp/J7ZaVjJVPrA1//TR5kyPG/5SMY1dKt8+qyVZj+ZKCUNW5saGHKm+IbgwNsnfQJMbTfdCmxRDp0ut8IZdkY2t5B2Vxbbj7/4soN1CSji3W0vFhbrfjqOnUOCIQqpeR33OUEGxKAsQi/s1fGuDIZ8EzaMuKbLnvK36Md7bxmjZxc2ugGp/HOGyx1ICaZbjX9nXb6Yf6zSHzkm0AU= olga.matusik@Olga-Matusik's-MacBook---CYH4QPK7FD"
}

resource "aws_instance" "ec2" {
  ami               = "ami-065deacbcaac64cf2"
  instance_type     = "t2.small"
  subnet_id         = data.aws_subnet.selected_subnet.id
  key_name          = aws_key_pair.deployer.key_name
  security_groups   = [aws_security_group.security_group.id]

  tags = {
    Name = "ec2-terraform"
  }
}


data "aws_subnet" "selected_subnet" {
  id        = "subnet-097fb25bb6de1e686"
}