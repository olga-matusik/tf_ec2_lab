variable "keypair_name" {
    description = "name of a keypair"
}

variable "instance_type" {
    description = "type of an instance used for ec2"
}
variable "ami_owner_id" {
    description = "ID of ami owner"
}
variable "ami_name" {
    description = "Name of ami"
}
variable "public_subnet_name" {
    description = "name of a public subnet to build ec2 in"
}
variable "vpc_name" {
    description = "name of a vpc"
}