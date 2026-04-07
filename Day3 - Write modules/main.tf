provider "aws" {
  region = "us-east-2"
}

module "ec2-instance" {
  source = "./modules/ec2-instances"
  instance_type_value = "t2.micro"
  ami_value = "ami-084568db4383264d4"
  subnet_id_value = "subnet-0f201fd5ad1b2a6da"
}