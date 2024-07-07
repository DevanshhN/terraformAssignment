resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_cidr
  tags = merge(var.default_tags, {
    Name = "Public Subnet"
  })
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr
  tags = merge(var.default_tags, {
    Name = "Private Subnet"
  })
}