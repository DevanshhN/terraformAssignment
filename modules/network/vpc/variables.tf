variable "vpc_cidr" {
  description = "The CIDR block for creating the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "default_tags" {
  description = "The default tags to be added to a resource"
  type        = map(string)
  default     = {}
}