# Generic Variables
variable "availability_zone" {
  description = "The availability zone resource will be in"
}

variable "tags" {
  description = "resource tags"
}

variable "subnet_cidr_block" {
  description = "cidr block range"
}

variable "map_public_ip_on_launch" {
  description = "Boolean for if there is a Public IP on launch"
}