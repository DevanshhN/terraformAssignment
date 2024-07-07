output "ssh_key" {
  value       = aws_key_pair.kp_public.key_name
  description = "The Resource ID of the SSH Key created"
}