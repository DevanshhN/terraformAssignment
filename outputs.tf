output "bastion_host_IP" {
  value = module.bastion.public_ip
}

output "Private_EC2_IP" {
  value = module.privateEC2.private_ip
}