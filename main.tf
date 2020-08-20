provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_key
}

module "vpc" {
  source = "./VPC"
}

module "sg" {
  source = "./SG"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source    = "./EC2"
  subnet_id = module.vpc.subnet_a_id
  sg_ids = module.sg.sg_id
}