output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The resource ID of the VPC created"
}