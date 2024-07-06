data "http" "myip" {
  url = "http://checkip.amazonaws.com/"
}

module "vpc" {
  source = "./modules/network/vpc"
}

module "subnet" {
  source = "./modules/network/subnet"
  vpc_id = module.vpc.vpc_id
}

module "network" {
  source            = "./modules/network"
  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
}

module "public_sg" {
  source  = "./modules/sg"
  vpc_id  = module.vpc.vpc_id
  sg_name = "public_sg"
  ingress_rules = [
    {
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["${chomp(data.http.myip.response_body)}/32"]
      security_groups = []
      description     = "Allow SSH from Terraform Server"
    }
  ]
}

module "private_sg" {
  source  = "./modules/sg"
  vpc_id  = module.vpc.vpc_id
  sg_name = "private_sg"
  ingress_rules = [
    {
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = []
      security_groups = [module.public_sg.sg_id]
      description     = "Allow SSH from public security group"
    }
  ]
}

module "ssh_key" {
  source = "./modules/ssh_key"
}

module "public_ec2" {
  source    = "./modules/ec2"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.public_subnet_id
  sg_id     = module.public_sg.sg_id
  ssh_key   = module.ssh_key.ssh_key
}

module "bastion" {
  source                      = "./modules/ec2"
  vpc_id                      = module.vpc.vpc_id
  subnet_id                   = module.subnet.private_subnet_id
  sg_id                       = module.private_sg.sg_id
  ssh_key                     = module.ssh_key.ssh_key
  associate_public_ip_address = false
}

#The below resource is created to change the permissions for the ssh key locally and copying the ssh key to the bastion host
resource "null_resource" "demo_resource" {
  depends_on = [module.public_ec2]

  provisioner "local-exec" {
    command = "chmod 400 kp.pem"
  }

  provisioner "file" {
    source      = module.ssh_key.ssh_key
    destination = "/home/ubuntu/kp.pem"
  }

  connection {
    host        = module.public_ec2.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(module.ssh_key.ssh_key)
  }

}

