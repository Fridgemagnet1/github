variable "tags" {
  description = "resource tags"
}

# variable "identifier" {
#   description = "Identifier name for the resource"
# }

# variable "environment" {
#   description = "Environment name for the resource"
# }

variable "availability_zone" {
  description = "The availability zone resource will be in"
}

variable "map_public_ip_on_launch" {
  description = "Boolean for if there is a Public IP on launch"
}

variable "subnet_cidr_block" {
  description = "cidr block range"
}

variable "route_table_cidr_block" {
  description = "cidr block for route table"
}