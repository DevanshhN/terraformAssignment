variable "vpc_id" {
  description = "Value of the VPC ID being passed when the module is called in the root main.tf"
}


variable "public_subnet_id" {
  description = "Value of the public subnet being passed when the modules is called in the root main.tf"
}

variable "private_subnet_id" {
  description = "Value of the private subnet being passed when the modules is called in the root main.tf"
}
