output "bastion_host_IP" {
  value = module.bastion.public_ip
  description = "The IPv4 Public IP address of the bastion host"
}

output "Private_EC2_IP" {
  value = module.privateEC2.private_ip
  description = "The IPv4 Private address of the private server, you can connect to it using the bastion host"
}