resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = merge(var.default_tags, {
    Name = "Assignment VPC"
  })
}

