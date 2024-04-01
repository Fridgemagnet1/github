## AWS Networking Modules

# VPC
module "vpc" {
    source = "../../modules/networking/vpc"

    # Generic Variables
    tags = var.tags
    
    # VPC Variables
}

# Subnet
module "subnet" {
  source = "../../modules/networking/subnet"

  # Generic Variables
  availability_zone = var.availability_zone
  tags = var.tags

  # Subnet Variables
  subnet_cidr_block = var.subnet_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
}

# NAT Gateway
module "nat_gateway" {
    source = "../../modules/networking/nat_gw"

    # Generic Variables
    tags = var.tags

    # NAT Gateway Variables
}

# Route Tables
module "route_tables" {
    source = "../../modules/networking/route_tables"

    # Generic Variables
    tags = var.tags

    # Route Tables
    route_table_cidr_block = var.route_table_cidr_block
}