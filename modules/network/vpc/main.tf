resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  lifecycle {
    ignore_changes = [tags]
  }
}