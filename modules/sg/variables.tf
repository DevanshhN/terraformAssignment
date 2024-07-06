variable "vpc_id" {
  description = "Value of the VPC ID being passed when the module is called in the root main.tf"
}

variable "sg_name" {
  description = "Name of the SG being created, value is passed from the calling module"
}

variable "ssh_port" {
  description = "SSH port to be allowed on the inbound rules for Security Group"
  default     = 22
  type        = number
}

variable "allowed_egress_cidr" {
  default = "0.0.0.0/0"
}

variable "ingress_rules" {
  description = "Ingress rules"
  type = list(object({
    from_port       = number
    to_port         = number
    protocol        = string
    cidr_blocks     = list(string)
    security_groups = list(string)
    description     = string
  }))
}