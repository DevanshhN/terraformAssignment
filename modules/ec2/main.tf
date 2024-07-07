resource "aws_instance" "ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.ssh_key
  security_groups             = [var.sg_id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.default_tags
}