variable "vpc_id" {
  description = "Vaule of the VPC ID being passed when the module is called in the root main.tf"
}

variable "default_tags" {
  description = "The default tags to be added to a resource"
  type        = map(string)
  default     = {}
}

variable "public_subnet_cidr" {
  description = "The CIDR of the public subnet to be created"
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR of the public subnet to be created"
  default     = "10.0.2.0/24"
}
