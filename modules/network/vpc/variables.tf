variable "vpc_cidr" {
  description = "The CIDR block for creating the VPC"
  type        = string
  default     = "10.0.0.0/16"
}