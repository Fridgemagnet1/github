resource "aws_vpc" "private_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = var.tags
}

resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = aws_vpc.private_vpc.id

  tags = var.tags
}