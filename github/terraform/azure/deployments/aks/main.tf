# This is the ask main.terraform 

module "resource_group" {
  source = "../../../deployments/aks"

  name = var.resource_group_name
  location = var.location
}