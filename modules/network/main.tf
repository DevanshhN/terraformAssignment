resource "aws_eip" "eip" {
  domain = "vpc"
  tags = merge(var.default_tags, {
    Name = "Assignment EIP"
  })
}
resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags   = merge(var.default_tags, { Name = "IGW" })
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.public_subnet_id
  tags          = merge(var.default_tags, { Name = "NGW" })
}

resource "aws_route_table" "private_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id

  }
  tags = merge(var.default_tags, { Name = "PrivateRT" })
}

resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = merge(var.default_tags, { Name = "PublicRT" })
}

resource "aws_route_table_association" "private_rta" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "public_rta" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.public_rt.id
}