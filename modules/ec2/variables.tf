variable "vpc_id" {
  description = "Value of the VPC ID being passed when the module is called in the root main.tf"
}

variable "subnet_id" {
  description = "Value of the  subnet being passed when the modules is called in the root main.tf"
}

variable "sg_id" {
  description = "Value of the Security Group ID that is to be attached to the EC2 Instance"
}

variable "associate_public_ip_address" {
  description = "To be true if the instance needs a public IP address attached, false if the instance is supposed to be private"
  default     = true
}

variable "ssh_key" {
  description = "The SSH key name to be use when creating the server"
}

variable "ami_id" {
  description = "AMI ID using which we are creating EC2 instance, same AMI is used for EC2 and bastion"
  type        = string
  default     = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  description = "Size of EC2 instance to be created, both EC2 instance will be created of same size"
  type        = string
  default     = "t2.micro"
}