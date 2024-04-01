output "vpc_id" {
  value = module.vpc.vpc_id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}