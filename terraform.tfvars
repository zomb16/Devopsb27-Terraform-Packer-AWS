vpc_name                   = "RRR-DEV"
cidr_block                 = "10.95.0.0/16"
env                        = "Dev"
public_subnet_cidr_blocks  = ["10.95.1.0/24", "10.95.2.0/24", "10.95.3.0/24"]
private_subnet_cidr_blocks = ["10.95.10.0/24", "10.95.20.0/24", "10.95.30.0/24"]
azs                        = ["us-east-1a", "us-east-1b", "us-east-1c"]
imagename                  = "ami-08d4ac5b634553e16"
key_name                   = "devops"
instance_type              = "t2.nano"

