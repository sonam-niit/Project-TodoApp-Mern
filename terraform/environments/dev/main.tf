provider "aws" {
  region = "us-east-1"
}
module "networking" {
  source = "../../modules/networking"
  azs = ["us-east-1a", "us-east-1b"]
}

module "ec2" {
  source = "../../modules/ec2"
  instance_type = "t2.micro"
  ami_id = "ami-084568db4383264d4" # Ubuntu 20.04 LTS (HVM), SSD Volume Type
  subnet_ids = module.networking.subnet_ids
  security_group_id = module.networking.security_group_id
  instance_count = 2
  key_name = "mern-key" # Replace with your key pair name
}

module "alb" {
  source = "../../modules/alb"
  subnet_ids = module.networking.subnet_ids
  security_group_id = module.networking.security_group_id
  vpc_id = module.networking.vpc_id
  instnce_ids = module.ec2.instance_ids
  
}