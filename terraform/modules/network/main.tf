data "aws_vpc" "ayto_demo_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "ayto_demo_subnet" {
  id = var.subnet_id
}

resource "aws_security_group" "main" {
  name   = var.sg_name
  vpc_id = data.aws_vpc.ayto_demo_vpc.id
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.sg_name
  }
}
