provider "aws" {
  region = var.aws_region
}

module "network" {
  source    = "./modules/network"
  vpc_id    = var.vpc_id
  subnet_id = var.subnet_id
  sg_name   = var.sg_name
}

module "ec2" {
  source            = "./modules/ec2"
  instance_name     = var.instance_name
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.sg_id
}
