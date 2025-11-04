variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the EC2 instance"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0b090cc7cbd5e3327"
}

variable "subnet_id" {
  type    = string
  default = "subnet-021e3ef0b7eafae7e"
}

variable "sg_name" {
  type    = string
  default = "cicd-demo-host-sg"
}

variable "key_name" {
  type    = string
  default = "key-aytozgz"
}

variable "ami_id" {
  type    = string
  default = "ami-0e6a50b0059fd2cc3"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
