resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.subnet.id

  tags = var.tags
}

resource "aws_eip" "nat" {
  domain = "vpc"
}
