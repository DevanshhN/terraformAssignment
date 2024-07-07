output "public_ip" {
  value       = aws_instance.ec2.public_ip
  description = "The public IP address of the resource created, IF it exists"
}

output "private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "The Private IP address of the resource created"
}

output "ec2_instance_id" {
  value       = aws_instance.ec2.id
  description = "The Resource ID of the EC2 instance created"
}