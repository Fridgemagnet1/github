resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.private_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = var.tags
}
# need to find a way to dynamically go trhough the routes so i don't need multiple resources

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.route_table_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = var.tags
}

# These associate the route tables to a subnet or a route table and an internet gateway or VPC
resource "aws_route_table_association" "public_rta_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_rta_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_rta_1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_route_table
}