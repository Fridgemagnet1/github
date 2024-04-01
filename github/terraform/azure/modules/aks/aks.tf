resource "azurerm_kubernetes_cluster" "prometheus_poc" {
  name                = "prometheus_poc"
  location            = azurerm_resource_group.prometheus_aks_rg.location
  resource_group_name = azurerm_resource_group.prometheus_aks_rg.name
  dns_prefix          = "prompoc1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {}
}