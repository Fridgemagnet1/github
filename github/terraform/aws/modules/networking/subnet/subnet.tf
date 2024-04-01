resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.private_vpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = var.tags
}