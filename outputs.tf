output "bastion_host_IP" {
  value = module.public_ec2.public_ip
}

output "Private_EC2_IP" {
  value = module.bastion.private_ip
}